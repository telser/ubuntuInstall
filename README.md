- Download Ubuntu 16.04.3 and copy to usb device

```
dd bs=512 if=path/to/ubuntu.iso of=/dev/sd? status=progress  # where ? is the usb device
```

- Check "Download updates while installing ubuntu"
- Select "Erase disk and install ubuntu"
- Timezone New York

- Configure system and install packages:

    wget -O - CHANGEME | bash

- Log out and log back in for group assignments & user settings to take effect

- Install dotfiles & clone repos:

```
curl <CHANGEME> | bash
```
# ubuntuInstall
