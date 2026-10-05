# BTD6-Collection-Event-Macro

This is a beginner-friendly, easy-to-use AutoHotkey macro program that automates the gameplay of Bloons Tower Defense 6. Its primary focus is completing expert maps on the hardest difficulty to maximize currency acquisition for in-game collection events. The macro targets specific bonus maps to ensure the maximum rewards are obtained.

## Requirements
### Required
* **AutoHotkey v1.1**: Download from [https://www.autohotkey.com](https://www.autohotkey.com)
* **Resolution**: 2560x1440
    * Some placements require pixel-perfect accuracy. If your monitor has a lower resolution, you can emulate it using the instructions provided in the report below.
* **Fast Track Mode**: Must be enabled. This significantly accelerates the process.
* **Default Keybinds**: Ensure your in-game settings are reset to default.
* **Benjamin**: Must be unlocked.
* **Maps**: At least one expert map must be unlocked. For maps on Impoppable difficulty, the Impoppable mode must be unlocked.

### Recommended
* **Monkey Knowledge**: Full monkey knowledge is recommended for Impoppable mode.
* **Visual Effects**: Turn off map visual effects for better script consistency.
* **Cursor Size**: Use the default cursor size for consistent performance.

## Instructions
1. Download the latest release from the column on the right and extract the ZIP folder.
2. To modify settings, open the `config.ini` file in a text editor and follow the provided directions.
3. Launch the game and navigate to the main menu.
4. Run `Start_Script.ahk` from the main menu.
5. **Stopping the Script**:
    * Press the `=` key multiple times to stop the game scripts.
    * You may choose to stop only the game scripts while keeping the GUI active to maintain the instance counter.
    * To fully stop the GUI, press the `-` key.

## Capabilities
* **Expert Maps**: Automates every expert map on either Impoppable or Easy difficulty. Difficulty selection is managed via the `config.ini` file.
* **Smart Detection**: The macro includes logic to continue the loop even if you level up, experience a failure, or encounter advertisements.
* **Bonus Maps**: Automatically selects and plays bonus maps or any other specific expert maps defined in the configuration.
* **Event Management**: Automatically opens event boxes when sufficient resources are collected and tracks each rarity instance in the GUI.
* **Live Status**: Displays the current action being performed in the top-right GUI.

## Notices
Certain maps utilize "cash drops" to improve script reliability. While these resources are eventually earned back, you may choose to disable them for maximum reward efficiency by selecting the "no cash drops" preset in the config file.

**Maps using cash drops on Impoppable:**
* Bloody Puddles
* Dark Dungeons
* Glacial Trail
* Tricky Tracks
* Workshop

**Maps with no cash drops:**
* Dark Castle
* Flooded Valley
* Infernal
* Muddy Puddles
* Ouch
* Quad
* Ravine
* Sanctuary
* All maps on Easy difficulty

## Emulating 2560x1440 Resolution
If your monitor resolution is lower than the script's hardcoded 2560x1440 requirement, you can create a custom high resolution via your GPU software.

| Step | NVIDIA (GeForce) | AMD (Radeon / Adrenalin) | Intel (Integrated / UHD) |
| :--- | :--- | :--- | :--- |
| **1. Open Panel** | Right-click desktop -> NVIDIA Control Panel | Right-click desktop -> AMD Software -> Settings | Install Intel Graphics Command Center from MS Store |
| **2. Custom Resolution** | Display -> Change resolution -> Customize -> Create Custom Resolution | Display -> Custom Resolutions -> Create New | Display -> Custom Resolutions -> Add |
| **3. Set Specs** | 2560x1440 @ 60Hz (Timing: Automatic/CVT-RB) | 2560x1440 @ 60Hz (Timing: Automatic/CVT-RB) | 2560x1440 @ 60Hz (Timing: Automatic) |
| **4. Test** | Click Test -> Confirm | Click Save/Test -> Confirm | Click Apply/Test -> Confirm |
| **5. Set Primary** | Select new resolution -> Apply | Select new resolution -> Apply | Select new resolution -> Apply |
| **6. Scaling** | System -> Display -> Scale = 100% | System -> Display -> Scale = 100% | System -> Display -> Scale = 100% |
| **7. Launch** | Run BTD6 (Windowed Fullscreen recommended) | Run BTD6 (Windowed Fullscreen recommended) | Run BTD6 (Windowed Fullscreen recommended) |

## Disclaimer
**USE AT YOUR OWN RISK.**
The software is provided "as is" without warranty of any kind, express or implied. While it is unlikely you will be flagged for cheating, it is not impossible. The author is not responsible for any consequences resulting from the use of this program. Use cautiously and only in single-player mode for best practice.

## Copyright
Copyright © 2026 evsny24.
All rights reserved.

This project is provided for personal and educational use only. You may not copy, modify, distribute, sublicense, or use this project or any part of it for commercial purposes without explicit written permission from the author.
