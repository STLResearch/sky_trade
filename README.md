[![style: very good analysis](https://img.shields.io/badge/style-very_good_analysis-B22C89.svg)](https://pub.dev/packages/very_good_analysis)

# SkyTrade UTM

SkyTrade UTM is our drone restrictions app. It allows drone operators to view airspace
restrictions around them keeping them informed of air-spaces where they can or cannot fly their
drones and providing detailed and actionable insight on restricted air-spaces

### Our system

Our system is decoupled into 3 parts

- A data ingestion module built with Python which imports drone restrictions data from reliable
  public sources
- An app backend which serves as the middle man between the app and the data ingester
- The cross platform iOS and Android app built with Flutter that displays drone restrictions on a
  friendly
  user interface

### Running the app

##### Note: The `dev` branch is frequently updated and contains latest code

##### Tip: You do not need to install Dart separately as the Flutter SDK includes the full Dart SDK

#### Install Flutter

First off, ensure you have Git installed on your machine. Also ensure you have the latest version of
Flutter installed. Go to  https://docs.flutter.dev/get-started/install and follow the instructions
to set up Flutter on your operating System

#### Install an IDE

Download the latest version of Android Studio from https://developer.android.com/studio and install
the Flutter plugin for Android Studio which in turn installs the Dart plugin

#### Write and compile for iOS

You will need a Mac running macOS 10.15 Catalina or later and XCode to be able to write and compile
for iOS. You will also need to install Rosetta 2 if your Mac runs on Apple silicon. Follow the
instructions at https://docs.flutter.dev/get-started/install/macos/mobile-ios to setup
writing and compile for iOS

#### Write and compile for Android

Follow the instructions on https://docs.flutter.dev/get-started/install/macos/mobile-android to
setup writing and compiling for Android

#### Run the project

Clone or download the project locally. Open the project in Android studio and run a
`flutter pub get`. Connect your Android and/or iOS simulator(s) or any physical devices and run the
app