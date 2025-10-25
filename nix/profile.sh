# /etc/profile.d/nix.sh

if [ -e '/nix/var/nix/profiles/default/etc/profile.d/nix-daemon.sh' ]; then
  . '/nix/var/nix/profiles/default/etc/profile.d/nix-daemon.sh'
fi

export PATH="/home/jcalabro/.nix-profile/bin:$PATH"
export PATH="/Users/jcalabro/.nix-profile/bin:$PATH"
