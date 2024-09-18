.PHONY: f-np, c-p, br-b, br-w, t, gcr-t, ocr-t

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

c-p: ## Cleans project
	rm -f pubspec.lock
	rm -f ios/Podfile.lock
	flutter clean
	flutter pub get
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