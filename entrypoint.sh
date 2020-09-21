#!/bin/sh -l

echo "Avvio l'installazione di Flutter nella VM."
git clone https://github.com/flutter/flutter.git
export PATH="$PATH:`pwd`/flutter/bin"
flutter precache
flutter channel $1
echo "Ho installato Flutter $1 nella VM."

lsresult=$(tree)
echo "::set-output name=ls::$lsresult"

flutter build apk
flutter build ios
