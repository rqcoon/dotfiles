# .bash_profile

if [ -e /home/kkga/.nix-profile/etc/profile.d/nix.sh ]; then
    . /home/kkga/.nix-profile/etc/profile.d/nix.sh;
fi # added by Nix installer

if [ -r ~/.bashrc ]; then
    . ~/.bashrc
fi