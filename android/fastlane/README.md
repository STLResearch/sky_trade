fastlane documentation
----

# Installation

Make sure you have the latest version of the Xcode command line tools installed:

```sh
xcode-select --install
```

For _fastlane_ installation instructions, see [Installing _fastlane_](https://docs.fastlane.tools/#installing-fastlane)

# Available Actions

## Android

### android deploy_internal_test

```sh
[bundle exec] fastlane android deploy_internal_test
```

Deploy dev release app bundle to Playstore internal test track

### android deploy_closed_test

```sh
[bundle exec] fastlane android deploy_closed_test
```

Deploy stage release app bundle to Playstore closed testing track

### android deploy_open_test

```sh
[bundle exec] fastlane android deploy_open_test
```

Deploy live release app bundle to Playstore open testing track

### android deploy_production

```sh
[bundle exec] fastlane android deploy_production
```

Deploy live release app bundle to Playstore production track

### android deploy

```sh
[bundle exec] fastlane android deploy
```

Deploy app bundle

### android clean

```sh
[bundle exec] fastlane android clean
```

Clean project

### android update_version_name

```sh
[bundle exec] fastlane android update_version_name
```

Update version name

### android update_version_code

```sh
[bundle exec] fastlane android update_version_code
```

Update version code

### android get_gradle

```sh
[bundle exec] fastlane android get_gradle
```

Test get gradle file

### android build_app_bundle

```sh
[bundle exec] fastlane android build_app_bundle
```

Build live release app bundle

### android deploy_to_playstore

```sh
[bundle exec] fastlane android deploy_to_playstore
```

Deploy to Playstore

----

This README.md is auto-generated and will be re-generated every time [_fastlane_](https://fastlane.tools) is run.

More information about _fastlane_ can be found on [fastlane.tools](https://fastlane.tools).

The documentation of _fastlane_ can be found on [docs.fastlane.tools](https://docs.fastlane.tools).
