# Autoload-Light-Client-Avail
A small code that guarantees the node restart in case of unexpected closure.

To execute, simply:
```./autoload.sh```

In case of execution permissions error, run:
```chmod +x autoload.sh```

## Creating a service to run 'autoload.sh' in the background:

```nano /lib/systemd/system/avail-load.service```

Paste this code below
```
[Unit]
Description=Autoload for Avail LC
Wants=network-online.target
After=network.target

[Service]
ExecStart=/bin/bash /root/autoload.sh

[Install]
WantedBy=multi-user.target
```
Press CTRL + O and CTRL + X

```
systemctl enable avail-load.service
systemctl start avail-load.service
```

To view logs for the running window

```journalctl -f -u avail-load```

For stop Light Client

```systemctl stop avail-load.service```

To view service status

```systemctl status avail-load.service```

