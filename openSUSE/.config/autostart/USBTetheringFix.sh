#!/bin/bash
#
#Fix USB tethering not working in openSUSE
#Must be run before connecting tethering device
sudo modprobe rndis_host
