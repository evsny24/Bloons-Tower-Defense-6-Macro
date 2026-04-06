# BTD6 Collection Event Macro

A beginner-friendly, easy-to-use AutoHotkey macro that automates gameplay in Bloons Tower Defense 6.

Its primary purpose is to complete expert maps on the hardest difficulty to maximize currency gained during collection events. The macro prioritizes bonus maps for optimal rewards.

---

## Requirements

### Required
- AutoHotkey v1.1  
  Download: https://www.autohotkey.com
- 2560×1440 resolution  
  Some placements are pixel-perfect (see resolution emulation section below)
- Fast Track Mode enabled  
  Speeds up runs significantly
- Default keybinds  
  Reset in-game settings to default
- Benjamin unlocked
- At least one expert map unlocked  
  Impoppable mode is optional

### Recommended
- Full Monkey Knowledge (for Impoppable)
- Map visual effects off (for consistency)
- Default cursor size (for consistency)

---

## Instructions

1. Download the latest release from the Releases section on the right side of the repository
2. Extract the ZIP file
3. (Optional) Open the config file in a text editor and adjust settings as needed
4. Launch the game and navigate to the main menu shown below

<br>
<img width="384" height="216" alt="mainmenu" src="https://github.com/user-attachments/assets/038d6da9-8ef8-4699-b2e5-23ca431a1483">
<br>

5. Run `Start_Script.ahk` from the main menu

### Stopping the Script
- Press `=` multiple times to stop active gameplay scripts
- You can keep the GUI running to preserve the insta counter
- Press `-` to fully close the GUI

---

## Capabilities

- Plays every expert map on either Impoppable or Easy
  - Per-map difficulty configurable via the config file
- Smart detection system:
  - Handles leveling up, failures, and advertisements
- Automatically selects and plays bonus maps or user-defined maps
- Opens event boxes automatically when resources are available
- Tracks insta-monkeys by rarity in a GUI
- Displays current action in a top-right GUI overlay

---

## Notice

Some maps use cash drops to improve reliability. Although the cost is typically recovered, this behavior is configurable.

A no-cash-drops preset is available in the config file for maximum efficiency without using consumables.

### Maps That Use Cash Drops (Impoppable)
- Bloody Puddles
- Dark Dungeons
- Glacial Trail
- Tricky Tracks
- Workshop

### No Cash Drop Maps
- Dark Castle
- Flooded Valley
- Infernal
- Muddy Puddles
- Ouch
- Quad
- Ravine
- Sanctuary
- All maps played on Easy difficulty

---

## Resolution Emulation (2560×1440)

If your monitor does not support 2560×1440, you can create a custom resolution using your GPU software.

| Step | NVIDIA (GeForce) | AMD (Adrenalin) | Intel (Integrated) |
|------|------------------|-----------------|--------------------|
| Open Control Panel | Right-click desktop → NVIDIA Control Panel | Right-click desktop → AMD Software → Settings | Right-click desktop → Intel Graphics Command Center |
| Custom Resolution | Display → Change resolution → Customize → Create | Display → Custom Resolutions → Create New | Display → Custom Resolutions → Add |
| Set Values | 2560×1440 @ 60Hz, Timing: CVT-RB | 2560×1440 @ 60Hz | 2560×1440 @ 60Hz |
| Test | Click Test | Click Save/Test | Click Apply/Test |
| Apply | Select new resolution → Apply | Select → Apply | Select → Apply |
| Scaling | Set Windows scaling to 100% | Set Windows scaling to 100% | Set Windows scaling to 100% |
| Run Game | Use Windowed Fullscreen if needed | Use Windowed Fullscreen if needed | Use Windowed Fullscreen if needed |

Notes:
- On lower-resolution monitors, the image will be downscaled
- Pixel-perfect placements will still function correctly

---

## Use at Your Own Risk

- This software is provided "as is", without warranty of any kind
- Use of automation may violate game terms of service
- There is a non-zero risk of being flagged
- The author is not responsible for any consequences
- Recommended for singleplayer use only

---

## Copyright

Copyright © 2026 evsny24

All rights reserved.

This project is provided for personal and educational use only.  
You may not copy, modify, distribute, sublicense, or use this project or any part of it for commercial purposes without explicit written permission from the author.
