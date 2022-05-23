#!/bin/bash
sudo apt install snap
sudo snap install flutter --classic
flutter sdk-path
flutter doctor
flutter build web