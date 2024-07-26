# eblanyrT's Fedora i3 dotfiles
My personal dotfiles for Fedora with i3WM

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
- OS : Fedora Linux
- WM : i3
- Terminal : [kitty](https://github.com/kovidgoyal/kitty)
- Bar : [Bumblebee Status](https://github.com/tobi-wan-kenobi/bumblebee-status?tab=readme-ov-file)
- Application Launcher : [Rofi](https://github.com/davatorium/rofi)
- GTK Theme : [Sweet Ambar Blue Dark](https://www.gnome-look.org/p/1253385)
- Icons : [Sweet Icons](https://www.gnome-look.org/p/1305251/)
- Compositor : [Picom](https://github.com/yshui/picom)
- Tiling : [i3-alternating-layout](https://github.com/olemartinorg/i3-alternating-layout)
- Prompt Customization : [Starship.rs](https://starship.rs/)

## Showcase
https://github.com/user-attachments/assets/8135b95d-cc6c-49a2-8396-983f2eef8603

![WhatsApp Image 2024-07-03 at 21 41 01](https://github.com/user-attachments/assets/2c53e18d-6f0e-471a-aa61-557b607ad4f4)

![screenshot-20240712-053100Z](https://github.com/user-attachments/assets/ea66b4ec-4437-4228-87ae-6a9337767993)

## Installation
1. Clone the repo:
    ```
    $ git clone https://github.com/eblanyrt/dotfiles-fedora-i3.git
    ```
2. Go to the directory, and launch the script:
    ```
    $ cd dotfiles-fedora-i3
    $ ./install.sh
    ```

## Applying Themes
After the installation is done, do the following instructions to apply GTK Themes, Icons, Rofi Themes, etc.

### GTK Themes and Icons
You need to use `lxappearance` to apply GTK Themes and Icons, install it by using this command:
```
$ sudo dnf install lxappearance
```

After that, you can follow these instructions:
1. Open the `lxappearance` application.
2. Go to "Widget", and select "Sweet-Ambar-Blue-Dark".
3. Click "Apply".
4. Now go to "Icon Theme", and select "candy-icons".
5. Click "Apply" again.

### Rofi Themes
1. Open `Rofi Theme Selector` application.
2. Scroll down and select the "tokyonight_big1 by w8ste"/
3. Click "Enter".
4. Press "alt+a" to accept the new theme.

### Wallpaper
1. Download the wallpaper [here](https://images5.alphacoders.com/114/1149233.png)
2. Move the image to `~/Pictures` directory
3. I suggest to rename the image file to `yuri_wall.png`
4. Open the i3 config:
    ```
    $ nano .config/i3/config
    ```
5. Uncomment the `#exec_always feh --bg-fill ~/Pictures/yuri_wall.png`, so it becomes like this:
    ```
    # Set custom wallpaper
    exec_always feh --bg-fill ~/Pictures/yuri_wall.png
    ```
