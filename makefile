.PHONY: f-np, c-p, br-b, br-w, t, gcr-t, ocr-t, t-got, d-d-r, d-s-r, d-l-r-o, d-l-r-p, loc, u-d-s-l, c-f-d, c-f-s, c-f-l, o-i, p-sds

include .env.makefile

f-np: ## Creates a feature with no presentation layer
	@echo "Creating new example feature"
	cd lib/features && mkdir example

	@echo "Creating layers"
	cd lib/features/example && mkdir data && mkdir domain

	@echo "Creating data layer"
	cd lib/features/example/data && mkdir data_sources && mkdir models && mkdir repositories

	@echo "Creating files inside data layer data sources"
	cd lib/features/example/data/data_sources && touch remote_data_source.dart

	@echo "Creating files inside data layer models"
	cd lib/features/example/data/models && touch model.dart

	@echo "Creating files inside data layer repositories"
	cd lib/features/example/data/repositories && touch repository_implementation.dart

	@echo "Creating domain layer"
	cd lib/features/example/domain && mkdir entities && mkdir repositories

	@echo "Creating domain layer entities"
	cd lib/features/example/domain/entities && touch entity.dart

	@echo "Creating domain layer repositories"
	cd lib/features/example/domain/repositories && touch repository.dart

c-p: ## Cleans project and updates Podfile.lock for iOS
	flutter clean
	flutter pub get
	rm -f ios/Podfile.lock
	sudo rm -r ios/Pods
	cd ios && pod repo update && pod install && cd ..

br-b: ## Runs build_runner build
	dart run build_runner build

br-w: ## Runs build_runner watch
	dart run build_runner watch

t: ## Runs all tests with coverage
	flutter test --coverage

gcr-t: ## Generates HTML coverage report for tests
	genhtml -o coverage/report coverage/lcov.info

ocr-t: ## Opens HTML coverage report for tests
	open coverage/report/index.html

t-got: ## Runs all tests with coverage, generates HTML coverage report for tests and opens the HTML coverage report
	make t
	make gcr-t
	make ocr-t

d-d-r: ## Deploys dev release app bundle to Playstore internal test track
	cd Android && fastlane deploy_internal_test && cd ..

d-s-r: ## Deploys stage release app bundle to Playstore closed testing track
	cd Android && fastlane deploy_closed_test && cd ..

d-l-r-o: ## Deploys live release app bundle to Playstore open testing track
	cd Android && fastlane deploy_open_test && cd ..

d-l-r-p: ## Deploys live release app bundle to Playstore production track
	cd Android && fastlane deploy_production && cd ..

loc: ## Prints the lines of code of each file in lib and the total lines thereafter
	find lib -type f -name "*.dart" ! -name "*.g.dart" ! -name "*.freezed.dart" ! -name "*.gen.dart" ! -name "firebase_options.dart" ! -path "*/firebase/*" -print0 | xargs -0 wc -l

u-d-s-l: ## Uploads Android and iOS live app debug symbols to Sentry
	flutter build apk -t lib/main_live.dart --flavor live
	flutter build ios -t lib/main_live.dart --flavor live
	dart run sentry_dart_plugin

c-f-d: ## Configures Firebase for dev environment
	flutterfire config \
      --project=skytrade-radar-dev \
      --out=lib/firebase_options_dev.dart \
      --ios-bundle-id=mobile.trade.sky.dev \
      --ios-out=ios/Runner/Firebase/dev/GoogleService-Info.plist \
      --android-package-name=mobile.trade.sky.dev \
      --android-out=android/app/src/dev/google-services.json

c-f-s: ## Configures Firebase for stage environment
	flutterfire config \
      --project=skytrade-radar-stage \
      --out=lib/firebase_options_stage.dart \
      --ios-bundle-id=mobile.trade.sky.stage \
      --ios-out=ios/Runner/Firebase/stage/GoogleService-Info.plist \
      --android-package-name=mobile.trade.sky.stage \
      --android-out=android/app/src/stage/google-services.json

c-f-l: ## Configures Firebase for live environment
	flutterfire config \
      --project=quick-doodad-428221-a1 \
      --out=lib/firebase_options_live.dart \
      --ios-bundle-id=mobile.trade.sky \
      --ios-out=ios/Runner/Firebase/live/GoogleService-Info.plist \
      --android-package-name=mobile.trade.sky \
      --android-out=android/app/src/live/google-services.json

o-i: ## Opens iOS module with information about the pods in XCode for build related purposes
	open ios/Runner.xcworkspace/

p-sds: ## Builds new live release apk, mints a new release NFT and publishes app to the Solana dApp store. Does not upgrade version code, version name and new_in_version field of config.yaml in android/publishing. Those need to be done manually first. Please make sure to fund the public address of the keypair with some SOL before this process starts to avoid errors
	flutter build apk -t lib/main_live.dart --flavor live
	cd android/publishing && npx dapp-store validate -k ${SOLANA_KEYPAIR_PATH} && npx dapp-store create release -k ${SOLANA_KEYPAIR_PATH} -u "%d", ${MAINNET_BETA_RPC_URL} && npx dapp-store publish update -k ${SOLANA_KEYPAIR_PATH} --requestor-is-authorized --complies-with-solana-dapp-store-policies