## Fan Auto Control
This plugin is needed to control the speed of the fans based on the temperatures of the HDDs.

If you want to control by the temperatur of the CPU, then it doesn't respond to that directly. 
Either use the script [here](https://kmwoley.com/blog/controlling-case-fans-based-on-hard-drive-temperature/) or use the PWM controller on the motherboard (if exists).

### Steps
1. Install Fan Auto Controll app from Apps
2. Go to Settings -> Fan Auto Control
3. If PWM Controller is not detected, execute following steps
4. Run `sensors-detect` command
5. After saying YES second time, if it shows following output, continue to next steps.
```
Found `ITE IT8686E Super IO Sensors'                        Success!
    (address 0xa40, driver `to-be-written')
```
6. Open file `/boot/syslinux/syslinux.cfg` (either via nano from CLI or Dynamix File Manager from Community Applications) (Source: [Link](https://forums.unraid.net/topic/100483-z490-vision-g-fan-sensors/?do=findComment&comment=931479))
7. Find the inner block starting with `label Unraid OS`
8. Add command `acpi_enforce_resources=lax` to the _append_ section of the block. Save and exit
```
label Unraid OS
  menu default
  kernel /bzimage
  append initrd=/bzroot acpi_enforce_resources=lax
```
9. Open file `/boot/config/go`
10. Add to the bottom `modprobe it87 force_id=0x8628`
11. Restart the server
12. See the results by repeating step 2

