#!/usr/bin/env bash
set -e
# Install basic tools
apt-get update && apt-get install -y git curl unzip xz-utils zip libglu1-mesa openjdk-11-jdk adb
# Install Flutter SDK
git clone https://github.com/flutter/flutter.git -b stable /opt/flutter
echo 'export PATH="$PATH:/opt/flutter/bin:/opt/flutter/bin/cache/dart-sdk/bin"' >> /etc/profile.d/flutter.sh
source /etc/profile.d/flutter.sh
flutter doctor -v
