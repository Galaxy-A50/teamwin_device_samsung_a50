# Device Tree for Samsung Galaxy A50 (a50)

## Description
This repository contains the device configuration for the **Samsung Galaxy A50** (codenamed *a50*). It is designed to build a functional TWRP.

## Device Specifications
| Feature         | Details                                     |
|-----------------|---------------------------------------------|
| CPU             | Octa-core (4x2.3 GHz Cortex-A73 & 4x1.7 GHz Cortex-A53) |
| Chipset         | Exynos 9610 (10nm)                          |
| GPU             | Mali-G72 MP3                                |
| Memory          | 4GB / 6GB RAM                               |
| Shipped Android | 9.0 (Pie), upgradable to 11 (One UI 3.1)    |
| Storage         | 64GB / 128GB                                |
| Battery         | 4000 mAh                                    |

## Current Status
- [x] Booting
- [x] All embedded functions working
- [ ] Decryption

## Credits
* **IgorpetinDev** - Lead Developer
* **TeamWin** - For the Recovery Project
* **TenSeventy7** - For Mint Kernel

## Build Instructions
To initialize your local repository and build the recovery image, use:

```bash
# Initialize ROM/TWRP source
repo init -u https://github.com/minimal-manifest-twrp/platform_manifest_twrp_aosp.git -b twrp-12.1

# Clone device tree
git clone https://github.com/Galaxy-A50/teamwin_device_samsung_a50 device/samsung/a50

# Build
. build/envsetup.sh
lunch twrp_a50-eng
mka recoveryimage
