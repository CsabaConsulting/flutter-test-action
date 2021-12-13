#!/bin/sh -l

echo "Start installing Flutter on the VM."
git clone https://github.com/flutter/flutter.git
export PATH="$PATH:`pwd`/flutter/bin"
flutter precache
flutter channel $1
echo "Installed Flutter $1 on the VM."

lsresult=$(tree)
echo "::set-output name=ls::$lsresult"

flutter pub get
flutter test
flutter build appbundle
#flutter build ios
