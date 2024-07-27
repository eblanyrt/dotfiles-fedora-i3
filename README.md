# eblanyrT's Fedora i3 dotfiles
My personal dotfiles for Fedora with i3WM, a simple yet decent-looking rice I've done for my first i3WM setup. The color scheme is inspired by Yuri from DDLC.

## Table of contents
* [Information](#information)
* [Showcase](#showcase)
* [Installation](#installation)
* [Applying Themes](#applying-themes)
    * [GTK Themes and Icons](#gtk-themes-and-icons)
    * [Rofi Themes](#rofi-themes)
    * [Wallpaper](#wallpaper)
* [Credits](#credits)

## Information
|OS| Fedora Linux|
|:-----|:-------:|
|WM| i3|
|Terminal| kitty|
|Bar| Bumblebee Status|
|Application Launcher| Rofi|
|GTK Theme| Sweet Ambar Blue Dark|
|Icons| Sweet Icons|
|Compositor| Picom|
|Tiling| i3-alternating-layout|
|Prompt Customization| Starship|

## Showcase
https://github.com/user-attachments/assets/8135b95d-cc6c-49a2-8396-983f2eef8603

![screenshot-20240712-053751Z](https://github.com/user-attachments/assets/d03942dd-4730-4bd2-b0a6-c8202ab12977)

![screenshot-20240712-053100Z](https://github.com/user-attachments/assets/ea66b4ec-4437-4228-87ae-6a9337767993)

## Installation
1. Install git:
    ```
    sudo dnf install git
    ```
2. Clone the repo:
    ```
    git clone https://github.com/eblanyrt/dotfiles-fedora-i3.git
    ```
3. Go to the directory, and launch the script:
    ```
    cd dotfiles-fedora-i3
    ./install.sh
    ```

## Applying Themes
After the installation is done, do the following instructions to apply GTK Themes, Icons, Rofi Themes, etc.

### GTK Themes and Icons
You need to use `lxappearance` to apply GTK Themes and Icons, install it by using this command:
```
sudo dnf install lxappearance
```

After that, you can follow these instructions:
1. Open the `lxappearance` application.
2. Go to "Widget", and select "Sweet-Ambar-Blue-Dark".
3. Click "Apply".
4. Now go to "Icon Theme", and select "candy-icons".
5. Click "Apply" again.
6. Reboot the system.

### Rofi Themes
1. Open `Rofi Theme Selector` application.
2. Scroll down and select the "tokyonight_big1 by w8ste".
3. Press "Enter".
4. Press "alt+a" to accept the new theme.

### Wallpaper
1. Download the wallpaper [here](https://images5.alphacoders.com/114/1149233.png).
2. Move the image to `~/Pictures` directory.
3. I suggest to rename the image file to `yuri_wall.png`.
4. Open the i3 config:
    ```
    nano .config/i3/config
    ```
5. Uncomment the `#exec_always feh --bg-fill ~/Pictures/yuri_wall.png`, so it becomes like this:
    ```
    # Set custom wallpaper
    exec_always feh --bg-fill ~/Pictures/yuri_wall.png
    ```
6. Reset the i3 by using `Super+Shift+r` key.

## Credits
- Rofi Themes - https://github.com/w8ste/Tokyonight-rofi-theme
- GTK Theme - https://www.gnome-look.org/p/1253385
- Icons - https://www.gnome-look.org/p/1305251/
- Terminal - https://github.com/kovidgoyal/kitty
- Compositor - https://github.com/yshui/picom
- Prompt Customization - https://starship.rs/
- Tiling - https://github.com/olemartinorg/i3-alternating-layout
- Application Launcher - https://github.com/davatorium/rofi
- Bar - https://github.com/tobi-wan-kenobi/bumblebee-status?tab=readme-ov-file