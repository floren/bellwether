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

#ifndef APP_DEVICE_MOUSE_H
#define APP_DEVICE_MOUSE_H

#include <stdbool.h>
#include <stddef.h>
#include "usb_device.h"
#include "usb_device_hid.h"

/*********************************************************************
* Function: void APP_DeviceMouseInitialize(void);
*
* Overview: Initializes the demo code
*
* PreCondition: None
*
* Input: None
*
* Output: None
*
********************************************************************/
void APP_DeviceMouseInitialize(void);

/*********************************************************************
* Function: void APP_DeviceMouseStart(void);
*
* Overview: Starts running the demo.
*
* PreCondition: The device should be configured into the configuration
*   that contains the custome HID interface.  The APP_DeviceMouseInitialize()
*   function should also have been called before calling this function.
*
* Input: None
*
* Output: None
*
********************************************************************/
void APP_DeviceMouseStart(void);

/*********************************************************************
* Function: void APP_DeviceMouseTasks(void);
*
* Overview: Keeps the demo running.
*
* PreCondition: The demo should have been initialized and started via
*   the APP_DeviceMouseInitialize() and APP_DeviceMouseStart() demos
*   respectively.
*
* Input: None
*
* Output: None
*
********************************************************************/
void APP_DeviceMouseTasks(void);

bool APP_DeviceMouseEventHandler(unsigned int event, void *pdata, size_t size);
void APP_DeviceMouseSOFHandler(void);

#endif
