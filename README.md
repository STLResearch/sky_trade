[![style: very good analysis](https://img.shields.io/badge/style-very_good_analysis-B22C89.svg)](https://pub.dev/packages/very_good_analysis)

**SPDX-License-Identifier: UNLICENSED**

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

## Our architecture

The project is built using clean architecture. It is largely divided into two modules - `core`
and `features`. `core` contains the core elements and `features` contains the individual features
provided. Each feature is built as a separate submodule however, some features use functionality
provided by another feature through the features `bloc`. It is worth noting that if you want to use
a unit of functionality provided by a feature, you must do that through its `bloc`. If a `bloc` does
not exist for that unit of functionality provided by the feature, you must create a `bloc` for that
unit of functionality. Also all features use one or more elements from the `core` module

## `core`

The `core` module contains the following submodules:

- `errors`
- `injection_container`
- `localization`
- `navigation`
- `resources`
- `utils`

### `core/errors`

`core/errors` contains all exceptions and failures raised or returned by each feature. It is further
divided into the following submodules:

- `core/errors/exceptions` which contains all the exceptions used by each feature. Each exception is
  separated into different files named according to the feature the exception is used in. Every new
  exception added should be done this way. If for some reason you want to add more exceptions to be
  used in an existing feature then update the exception file corresponding to that feature in this
  submodule. It is worth noting that exceptions are only thrown in the data source of the data layer
  of a feature. If a feature does not have or need a data source or a data layer then there should
  not be an exception file here for that feature

- `core/errors/failures` which contains all the failures used by each feature. Exceptions are not
  and must not be propagated throughout the app, rather they are only thrown in the data source of
  the data layer and caught, processed and returned as a `Left` Failure in the repository
  implementation of the data layer. If it is known that the functionality provided by a feature or a
  unit of functionality provided by a feature cannot raise an exception then it follows that that
  feature or unit of functionality provided by that feature will not have a corresponding failure.
  Similar to exceptions, each failure is separated into different files named according to the
  feature the failure is used in. Every new failure added should be done this way

### `core/injection_container`

`core/injection_container` contains files responsible for registering all features for dependency
injection purposes. Each file is named according to each feature for which DI has been setup for and
is responsible for registering all `blocs`, `repositories`, `data sources` and other elements of a
feature. Every feature should have a file here. If you do not register a feature for DI then either
the app may not compile or the feature may not be usable. The former is more probable

### `core/localization`

`core/localization` contains an `l10n` submodule which contains all translations for the app in
various languages. Each `.arb` file is named according to the language the translation is in. Every
user facing string must be kept in this `.arb` file(s). To add a new entry to the `.arb` file you
must specify a key and value. Keys must be in camel case and values can be in any case, typically
sentence case. To avoid unintentional duplication of keys with different key names (obviously) but
the same values, key names must correspond to their values. This would make it easy for a consumer
to search for a string using the same content as the string without the hassle of reading through a
really large `.arb` file

### `core/navigation`

`core/navigation` contains route configuration for the app

### `core/resources`

`core/resources` contains all resources used by the app. It is further divided into the following
submodules:

- `core/resources/numbers` contains all numbers used by the app and is broadly divided into
  networking related numbers and UI related numbers. All numbers related to the UI like padding,
  margin, elevation and radius values to mention a few must reside here. No numbers should be
  hardcoded on the UI. You should put all numbers used on the UI inside the
  `core/resources/numbers/ui.dart` file with a variable name corresponding to the name of
  the actual value, arranged in ascending order of values. On the other hand, numbers related to
  networking should be kept in the `core/resources/numbers/networking.dart` file

- `core/resources/strings` contains all strings used by the app. Unlike the `.arb` file(s) in
  `core/localization/l10n` these are not user facing strings and it makes absolutely no sense for
  them to be translated. `core/resources/assets_paths` contains paths to all assets used throughout
  the app, `core/resources/environments` define environment related
  variables, `core/resources/fonts` contains all font names used throughout the app,
  `core/resources/local` contains all strings related to local/on device operations like local
  storage keys and locally stored file name endings to mention a few, `core/resources/networking`
  contains all networking related strings like request header and body keys, Web3Auth related keys
  and so on, `core/resources/regex_patterns` contains regex patterns like the email validation regex
  pattern used for email validation and so on, `core/resources/routes` contains all app routes used
  in `core/navigation/route_configuration`, `core/resources/secret_keys` contains references to
  secret keys keys used in the app and `core/resources/special_characters` contains special
  characters used throughout the app

- `core/resources/colors` contains color definitions used throughout the app

- `core/resources/theme` contains theme definitions used in app

### `core/utils`

`core/utils` contains utility functions, interfaces, enums, extensions and type definitions used in
the app. It is further divided into the following submodules:

- `core/utils/clients` contains clients used in the app. There are different clients with different
  responsibilities- `core/utils/clients/data_handler` which handles transforming data from data
  sources to business objects used by repositories (implementations),
  `core/utils/clients/network_client` which contains a `SocketIOClient` for Socket IO related
  operations and a `HttpClient` for traditional network request related operations and
  `core/utils/clients/response_handler` which handles transforming data from network requests to
  models. `core/utils/clients/response_handler` is equipped with the ability to throw Exceptions
  which should be and must be caught in the repository implementation of the data layer

- `core/utils/enums` contains enums used in the app. It is categorized into `core/utils/enums/ui`
  which contains enums related to and used for UI related operations, `core/utils/enums/local` which
  contains enums related to and used for local/on device operations and
  `core/utils/enums/networking` which contains enums related to and used for networking related
  operations

- `core/utils/extensions` contains extensions used in the app. Every file created here must be named
  after the interface the extension is operating on

- `core/utils/typdefs` contains type definitions used in the app. Every file created here must be
  named according to the environment in which the type definition is used, e.g
  `core/utils/typdefs/local` for type definitions related to or used in local/on device
  operations and so on

## `features`

Typically a feature is divided into the following layers or submodules:

- `data`
- `domain`
- `presentation`

### `data`

The `data` layer is where data manipulation and processing happens. This is where the business logic
of the app resides. The `data` layer consists of the following submodules:

- `data sources` which may contain a `remote data source` and/or a `local data source`.
  The `remote data source` contains a contract and an implementation of that contract with logic
  that fetches and processes data from a remote server. The `local data source` contains a contract
  and an implementation of that contract with logic that fetches and processes data from cache or
  some on device storage mechanism. If a feature does not need to fetch data from a remote server or
  from some on device storage mechanism then such feature does not and will not have a data source.
  In some cases it is possible that an external dependency can stand in as a data source. A typical
  scenario is the `location` feature which does not need a data source because the `Geolocator`
  dependency the feature relies on already serves as its data source. In such a scenario then it
  makes sense that the feature would not have a data source submodule since this is already handled
  by the external dependency. `data sources` must either return a `model` or throw an `exception`

- `models` which hold data from the `data sources`. `models` always contain the `fromJson` and
  `toJson` methods enabling `data sources` to convert results from external APIs to `models` or
  enabling the `models` themselves to be converted to a format suitable for transmitting data over
  an external API

- `repositories` (implementation) which contains concrete implementation of the `repositories`
  (contract) in the domain layer. The `repositories` (implementation) process data from
  the `data sources` converting the `model`s to business objects or rather `entities`.
  The `repositories` (implementation) must either return a `Left` `Failure` or a `Right` `Entity`-
  It must catch `exception`s thrown from the `data sources` and return a `Left` `Failure` or it must
  process the result from the `data sources` and return a `Right` `Entity`. `repositories`
  (implementation) will and must never throw

### `domain`

The `domain` layer has little to no business logic but instead depends on the data layer which
contains implementations of its business logic. The `domain` layer consists of the following
submodules:

- `entities` which hold data from the `models`. `entities` are pure and domain specific business
  objects

- `repositories` (contract) which contains contracts that are implemented in the `repositories`
  (implementation) of the `data` layer

### `presentation`

The `presentation` layer is the highest layer of the architecture. It is the part that makes up the
user interface of the app. The `presentation` layer consists of the following submodules:

- `blocs` which holds the presentation logic of the app and serves as state manager for the user
  interface

- `views` which hold the user interface of the app. `views` contain Flutter specific widgets

- `widgets` which hold reusable parts of the `views`

## `app`

`app` is the topmost level of the app. It contains code for setting up theming, routing and
localization to mention a few

## `app_bloc_observer`

`app_bloc_observer` observes BLoC states and state transitions for debugging purposes. The BLoC
observer is registered in `main` before the `app` is loaded

## `app_bloc_provider`

`app_bloc_provider` provides BLoC instances to the entire app

## `injection_container`

`injection_container` calls all the services from the different files in `core/injection_container`
and registers them for dependency injection. It is registered in `main` before the `app` is loaded

## `main`

`main` is the entry point of the entire app. `main` contains some initialization code that needs to
be run before `app` is loaded- loading `dotenv`, initializing sentry reporting, Firebase analytics,
hydrated storage, dependency injection and registering the BLoC observer to mention a few

#### Top level overview of app
<img width="1622" height="1151" alt="App flow drawio" src="https://github.com/user-attachments/assets/8569ef03-fcff-4743-acbd-421563163bfc" />






