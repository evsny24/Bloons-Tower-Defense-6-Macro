# BTD6-Collection-Event-Macro
This is an autohotkey macro program that automates the gameplay of Bloons Tower Defense 6. It's main focus is completing expert maps on the hardest difficulty to gain the most amount of currency, especially during collection events where it will target bonus maps to get the maximum rewards.

# REQUIREMENTS TO RUN:

Required:
- AutoHotKey v1.1
- 2560x1440 Resolution
    - Some placements are pixel perfect, but don't worry; if your monitor is a lower resolution, you can emulate it. See below
- Fast Track Mode enabled
    - It simply makes the process so much faster, but I am working to make this optional for better accesibility
- Default key binds
    - In settings, reset to default
- Benjamin unlocked
- At least one expert map unlocked, and on each expert map you have unlocked, have impoppable unlocked if you plan to play every map on impoppable
  
Recommended:
- full monkey knowledge for impoppable mode especially
- map visual effects off for consistency
- default cursor size also for consistency

# INSTRUCTIONS
- Click on the blue "Code" button and download zip. Extract the folder.
- If you wish to change the settings, open the config file in a text editor and follow directions there
- Load game and navigate to menu screen (where you can click play, choose hero, see achievements, etc.)
- Run Start_Script.ahk
- If you would like to stop or run into an issue:
    - Stop the scripts that are playing the game by pressing "=" a few times
    - You may choose to stop the game scripts but keep the GUI running to preserve the insta counter
    - If not, stop the GUI with "-"

# USE AT YOUR OWN RISK
- THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED.
- Although it is not likely you will get flagged as cheating, it is not impossible
- I am not responsible for any consequences from the use of this program
- Use cautiously, and only in singleplayer for best practice
- USE AT YOUR OWN RISK

# CAPABILITIES
- Can play every expert map on either impoppable or easy
    - Per-map difficulty selection by editing the config file, instructions in the file
- Smart detection helps the loop to continue if you level up, fail, or get an advertisement
    - Yes, there are ads for the DLC if you do not own them
- Will automatically select the event map for maximum rewards, but still works without an ongoing event
- Opens boxes when enough resources are collected, and keeps track of each rarity insta you obtain in a GUI
- Shows the current action being performed in the top right GUI

# NOTICE

Some maps use cash drops to improve reliability. Even though you earn the money back, you may configure however you want. There is a no cash drops preset configuration you can enable in the config file.

Maps that use cash drops on impoppable
- bloody puddles
- dark dungeons
- glacial trail
- tricky tracks
- workshop

No cash drop maps
- dark castle
- flooded valley
- infernal
- muddy puddles
- ouch
- quad
- ravine
- sanctuary
- every map played on easy difficulty

# EMULATING 2560x1440 RESOLUTION

If your monitor is lower resolution than the script’s hardcoded resolution (2560×1440), you can create a **custom/high resolution** using your GPU software. Below are instructions for NVIDIA, AMD, and Intel GPUs.

| Step | NVIDIA (GeForce) | AMD (Radeon / Adrenalin) | Intel (Integrated / UHD) |
|------|-----------------|--------------------------|--------------------------|
| **1. Open GPU Control Panel** | Right-click desktop → **NVIDIA Control Panel** | Right-click desktop → **AMD Software / Adrenalin** → **Settings (gear)** | Right-click desktop → **Intel Graphics Command Center** |
| **2. Go to Custom Resolution Section** | **Display → Change resolution → Customize… → Create Custom Resolution…** | **Display → Custom Resolutions → Create New** | **Display → Custom Resolutions → Add** |
| **3. Set Resolution & Refresh Rate** | Horizontal: 2560, Vertical: 1440, Refresh: 60Hz, Timing: Automatic / CVT-RB | Horizontal: 2560, Vertical: 1440, Refresh: 60Hz, Timing: Automatic / CVT-RB | Horizontal: 2560, Vertical: 1440, Refresh: 60Hz, Timing: Automatic |
| **4. Test Resolution** | Click **Test** → Confirm if screen works | Click **Save / Test** → Confirm if screen works | Click **Apply / Test** → Confirm if screen works |
| **5. Apply & Set as Primary (Optional)** | Back in **Change resolution**, select new resolution → **Apply** | Back in **Display**, select new resolution → **Apply** | Back in **Display**, select new resolution → **Apply** |
| **6. Set Windows Scaling** | Settings → System → Display → Scale = 100% | Settings → System → Display → Scale = 100% | Settings → System → Display → Scale = 100% |
| **7. Run BTD6** | Launch BTD6 on the new resolution (use **Windowed Fullscreen** if needed) | Launch BTD6 on the new resolution (use **Windowed Fullscreen** if needed) | Launch BTD6 on the new resolution (use **Windowed Fullscreen** if needed) |
| **Notes / Caveats** | If monitor is physically lower than resolution, image is downscaled; pixel-perfect placement still works | Same as NVIDIA; visuals may be slightly softer | Same as NVIDIA; visuals may be slightly softer |

# COPYRIGHT

Copyright © 2026 Evan S.

All rights reserved.

This project is provided for personal and educational use only.  
You may not copy, modify, distribute, sublicense, or use this project or any part of it for commercial purposes without explicit written permission from the author.

