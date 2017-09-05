
The INF found in this directory upgrades the C-Media gameport driver with the standard Windows 98 one. The original C-Media driver does not get upgraded by default because of a name conflict. This upgrade is only necessary if the drivers listed for the gameport include "cmjstick.drv" - please check in the Device Manager to be sure that you have the correct device before attempting to upgrade this driver.

To install:

  1) Start -> Settings -> Control Panel
  2) Double click on System
  3) Click on Device Manager tab
  4) Click on "+" to the left of Sound, video and game controllers to expand
  5) Click on "C-Media Inc. Joystick"
  6) Click "Properties" tab
  7) Click "Driver" tab
  8) Click on "Update Driver" button
  9) Click on "Next" button
10) Click on "Display a list..."
11) Click on "Next" button
12) Click on "Have Disk"
13) Enter complete path to this directory, e.g. d:\drivers\input\cmedia
14) Click on OK to install

Once installed, you may need to re-add and recalibrate any joysticks you had configured using the Game Controllers control panel