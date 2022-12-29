/*******************************************************************************
Copyright 2016 Microchip Technology Inc. (www.microchip.com)

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

To request to license the code under the MLA license (www.microchip.com/mla_license), 
please contact mla_licensing@microchip.com
*******************************************************************************/

/** INCLUDES *******************************************************/
#include "system.h"

#include "usb_device.h"
#include "usb_device_hid.h"
#include "usb_device_cdc.h"

#include "app_device_mouse.h"
#include "app_led_usb_status.h"
#include "pmw3389.h"


void spi_begin() {
    NCS = 0;
}

void spi_end() {
    NCS = 1;
}

unsigned char spi_read_reg(unsigned char addr) {
    unsigned char data;
    unsigned char x;
    
    x = SSPBUF;
    // Send the address we want to read
    spi_begin();
    // write the address with MSB low (read)
    SSPBUF = addr & 0x7f;
    while (!BF);
    x = SSPBUF; // read whatever they sent, it doesn't matter
    __delay_us(35); // tsrad
    
    // Now get the result they sent
    SSPBUF = 0x1; // send some nonsense, so we can receive the actual value
    while (!BF);
    spi_end();
    __delay_us(20);
    data = SSPBUF; // read the data

    return data;
}

void spi_write_reg(unsigned char addr, unsigned char value) {
    unsigned char x;
    spi_begin();
    // write the address with MSB high
    SSPBUF = addr | 0x80;
    while (BF == 0);
    x = SSPBUF; // read whatever nonsense they sent
    __delay_us(1);
    // Now send the data
    SSPBUF = value;
    while (BF == 0);
    x = SSPBUF; // read whatever we received, we don't care
    __delay_us(20);
    spi_end();
    __delay_us(100);
}

void get_burst(unsigned char* buff) {
    int i;
    
    spi_begin();
    // write somethign to motion burst buffer
    spi_write_reg(Motion_Burst, 0x1);
    
    // Read from the motion burst buffer
    spi_read_reg(Motion_Burst);
    __delay_us(35);
    
    // Now read 12 bytes
    for (i = 0; i < 12; i++) {
        SSPBUF = Motion_Burst;
        while (BF == 0);
        buff[i] = SSPBUF;
    }
    spi_end();
}

/********************************************************************
 * Function:        void main(void)
 *
 * PreCondition:    None
 *
 * Input:           None
 *
 * Output:          None
 *
 * Side Effects:    None
 *
 * Overview:        Main program entry point.
 *
 * Note:            None
 *******************************************************************/
MAIN_RETURN main(void)
{
    SYSTEM_Initialize(SYSTEM_STATE_USB_START);

    USBDeviceInit();
    USBDeviceAttach();

    ANSELA = 0x0;
    ANSELC = 0x0;
    TRISA=0b00111000;
    TRISC=0b00100010;
    
    // Reset SPI on the PIC
    SSPCON1 = 0;
    SSPCON2 = 0;
    SSPCON1bits.SSPM = 0x1;
    SSPCON1bits.CKP = 1; // clock polarity
    SSPSTATbits.CKE = 0; // clock edge select
    SSPCON1bits.SSPEN = 1; // enable SPI

    __delay_ms(1);
    
    // reset device's SPI port
    spi_begin();
    __delay_us(50);
    spi_end();
    __delay_us(50);

    
    // Reset the sensor
    NRESET = 0;
    __delay_ms(50);
    NRESET = 1;
    __delay_ms(50);
    
    unsigned char x;
    x = spi_read_reg(Product_ID);
    x = spi_read_reg(Product_ID);
    x = spi_read_reg(Motion);
    x = spi_read_reg(Delta_X_L);
    x = spi_read_reg(Delta_X_H);
    x = spi_read_reg(Delta_Y_L);
    x = spi_read_reg(Delta_Y_H);
    __delay_ms(1);
    
    // Set the CPI
#define CPI 800
    uint16_t cpival;
    cpival = CPI / 50;
    spi_write_reg(Resolution_L, (cpival & 0xFF));
    spi_write_reg(Resolution_H, (cpival >> 8) & 0xFF);
    
    //write_firmware();
    
    // write to Motion register to kick things off
    spi_write_reg(Motion, 0x1);
    
    int8_t motion, xl, xh, yl, yh;
    int16_t X, Y;
    int8_t left, right, mid;
    while(1)
    {
        //spi_read_reg(Product_ID);
        motion = 0x00;
        motion = spi_read_reg(Motion);
        dx = dy = 0;
        if (motion & 0x80) {
            xl = spi_read_reg(Delta_X_L);
            xh = spi_read_reg(Delta_X_H);
            yl = spi_read_reg(Delta_Y_L);
            yh = spi_read_reg(Delta_Y_H);
            X = (xh << 8) | xl;
            Y = (yh << 8) | yl;
            dx = -X;
            dy = -Y;
        }
        
        // Watchdog... if we actually read from the register,
        // this bit will be set
        if (motion & 0x20) {
            CLRWDT();
        }
        
        // Mouse button debouncing
        left = BUTTON_LEFT;
        if (!left) {
            // button is currently pressed
            leftCounter = (leftCounter<=THRESH)?leftCounter+1:leftCounter;
        } else {
            leftCounter = (leftCounter>0)?leftCounter-1:0;
        }
        
        right = BUTTON_RIGHT;
        if (!right) {
            // button is currently pressed
            rightCounter = (rightCounter<=THRESH)?rightCounter+1:rightCounter;
        } else {
            rightCounter = (rightCounter>0)?rightCounter-1:0;
        }
        
        mid = BUTTON_MID;
        if (!mid) {
            // button is currently pressed
            midCounter = (midCounter<=THRESH)?midCounter+1:midCounter;
        } else {
            midCounter = (midCounter>0)?midCounter-1:0;
        }
     
        SYSTEM_Tasks();

        #if defined(USB_POLLING)
            // Interrupt or polling method.  If using polling, must call
            // this function periodically.  This function will take care
            // of processing and responding to SETUP transactions
            // (such as during the enumeration process when you first
            // plug in).  USB hosts require that USB devices should accept
            // and process SETUP packets in a timely fashion.  Therefore,
            // when using polling, this function should be called
            // regularly (such as once every 1.8ms or faster** [see
            // inline code comments in usb_device.c for explanation when
            // "or faster" applies])  In most cases, the USBDeviceTasks()
            // function does not take very long to execute (ex: <100
            // instruction cycles) before it returns.
            USBDeviceTasks();
        #endif
  
        //Application specific tasks
        APP_DeviceMouseTasks();
        
        //CDCTxService();

        __delay_ms(2);
    }//end while
}//end main


/*******************************************************************************
 End of File
*/
