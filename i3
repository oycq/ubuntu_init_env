sudo apt-get install i3

sudo apt install -y gnome-flashback
https://github.com/glsorre/i3-gnome

vim /home/oycq/.config/i3/config

bindsym $mod+h focus left
bindsym $mod+j focus down
bindsym $mod+k focus up
bindsym $mod+l focus right

bindsym $mod+Shift+h move left
bindsym $mod+Shift+j move down
bindsym $mod+Shift+k move up
bindsym $mod+Shift+l move right

# split in horizontal orientation
bindsym $mod+Shift+v split h

# split in vertical orientation
bindsym $mod+v split v

voice:
#alsamixer
bindsym XF86AudioRaiseVolume exec amixer set Master playback 5+
bindsym XF86AudioLowerVolume exec amixer set Master playback 5-
