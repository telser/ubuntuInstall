#! /bin/bash

# stop pulse
pulseaudio -k

# add the following configs
echo "# These configs are added by drew's install script" | sudo tee -a /etc/pulse/daemon.conf
echo "resample-method = src-sinc-medium-quality" | sudo tee -a /etc/pulse/daemon.conf
echo "default-sample-format = s32le" | sudo tee -a /etc/pulse/daemon.conf
echo "default-sample-rate = 48000" | sudo tee -a /etc/pulse/daemon.conf

# restart pulse
pulseaudio --start

# check that it worked
echo "The sample rate is\n"
pacmd list-sinks | grep sample
echo "\nit's supposed to be sample spec: s32le 2ch 48000Hz"
