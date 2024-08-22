# I3 Debian Installation Script

This repository contains a script for installing essential components needed for a functional desktop environment on a Debian-based system. It installs a minimal setup including the i3 window manager, utilities, and other essential software. The script also handles cleanup after installation.

## Components

| Component | Description |
|-----------|-------------|
| **i3**    | Lightweight tiling window manager |
| **dmenu** | Application launcher |
| **kitty** | Terminal emulator |
| **lightdm**         | Display manager |
| **lightdm-gtk-greeter** | GTK greeter for LightDM |
| **pipewire** | Modern audio server |
| **pipewire-audio-client-libraries** | Client libraries for PipeWire |
| **pipewire-pulse** | PulseAudio replacement for PipeWire |
| **thunar** | File manager |
| **firefox** | Web browser |
| **xclip** | Clipboard utility |
| **xrandr** | Screen resolution manager |
| **arandr** | GUI for xrandr |
| **picom** | Compositor |
| **nitrogen** | Wallpaper manager |
| **network-manager** | Network management tool |

## Installation

1. **Clone the Repository**
```bash
git clone https://github.com/your-username/i3-debian.git
cd i3-debian
```
2. **Make the Script Executable**
```bash
chmod +x install_script.sh
```
3. Run the Script
```bash
./install_script.sh
```
## Script Overview
- **Header:** Includes ASCII art and script information.
- **Component Installation:** Installs a predefined list of essential components.
- **Error Handling:** Logs installation details and errors to install_log.txt.
- **Cleanup:** Performs cleanup of unnecessary packages and cache after installation.

## Contributing
Contributions are welcome! Please open an issue or submit a pull request if you have suggestions or improvements.

## License
This project is licensed under the MIT License - see the LICENSE file for details.
