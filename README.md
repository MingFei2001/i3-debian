## I3 Debian Installation Script

!!⚠️ Work In Progress ⚠️!!
<!-- TODO: add a screenshot -->
![Screenshot of the script](#)
A streamlined script for installing i3 window manager and essential utilities on top of a Debian XFCE netinstall base. This project aims to provide a minimal yet functional i3 environment while leveraging the stable foundation of XFCE's system services.

## 🚀 Features
- Automated i3 setup on Debian XFCE
- Minimal resource overhead
- Preserves XFCE's stable system services
- Configurable installation options
- Detailed logging and error handling

## 📋 Base System Prerequisites
- Debian XFCE netinstall image (tested with Debian 12 Bookworm)
- Pre-configured components (provided by XFCE base):
    - Display Manager (LightDM)
    - Audio (PipeWire)
    - Network Management
    - Power Management
    - Basic system utilities

## 🔧 Additional Components
| Component | Description |
|-----------|-------------|
| **i3** | Lightweight tiling window manager |
| **dmenu** | Application launcher |
| **kitty** | Modern terminal emulator |
| **picom** | Compositor for transparency and animations |
| **arandr** | GUI for display management |
| **xclip** | Command line interface to X clipboard |

## 📥 Installation
1. **Start with Debian XFCE**
- Install Debian using the debian netint image
- Complete the base system setup

2. **Clone the Repository**
```bash
git clone https://github.com/MingFei2001/i3-debian.git
cd i3-debian
```

3. **Run the Installation Script**
```bash
# use bash or any POSIX compliant shell
bash install.sh
```

## 🔍 Script Overview
- **Component Installation:** Installs i3 and related utilities on top of XFCE
- **Error Handling:** Logs installation details and errors to install_log.txt
- **Integration:** Sets up i3 as an alternative session in LightDM
- **Configuration:** Provides basic i3 configuration files

## 💡 Benefits of XFCE Base
- Reliable display manager configuration
- Working audio setup out of the box
- Pre-configured network management
- Stable power management
- Reduced installation complexity

## 🙏 Acknowledgments
- i3 Window Manager team
- Debian XFCE maintainers
- Contributors and testers

## 📄 License
This project is licensed under the MIT License - see the LICENSE file for details.

---
Made with ❤️ by [Your Name/Organization]
