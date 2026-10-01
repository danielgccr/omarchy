echo "Render GTK3 with GLES on NVIDIA so Sushi can play video previews"

if omarchy-hw-nvidia; then
  # Hyprland imports its env into systemd and D-Bus only at login, so D-Bus-activated
  # Sushi would keep desktop GL until the next one unless the running session gets it now.
  dbus-update-activation-environment --systemd GDK_GL=gles || omarchy-state set reboot-required
fi
