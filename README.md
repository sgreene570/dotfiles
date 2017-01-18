# dotfiles
My Linux dotfiles
<br>
# vimrc
<br>
My vimrc has a few standard settings and a few neat ones.
<br>
Tabs are set to 4 spaces, because that's how I like it.
<br>
<code>:W</code> can be used to write a file as sudo (this is pretty useful).
<br>
F5 can be mashed to kill off trailing whitspaces.
<br>
If you plan on keeping the vimrc in the .vim folder, you should make a symlink back in your homedir.
# bashrc
<br>
Not much to say here, got some nice colors and some basic aliases.
<br>
(I try to avoid using aliases as a crutch, and maybe you should too).
<br>
# bash_profile
<br>
This prompts users on login if they would like to <code>startx</code>.
<br>
Default case is yes.
<br>
# bindings.sh
<br>
This is a bash script I wrote to map out a few keys for xbindkeys.
<br>
This script prompts users to bind the volume up and down keys through ALSA, as well as the brightness up and down keys through xbacklight.
<br>
Typically, I add other things to my .xbindkeysrc such as a binding for slock (usually <code>mod4 + l</code>).
<br>
# autostart
<br>
This is an autostart file for openbox.
<br>
Has a list of generic programs that I need to launch when openbox starts.
<br>
I prefer a higher key repeat rate, especially when using in vim.



