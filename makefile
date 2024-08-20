.PHONY: f-np

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

clean: ## Cleans project
	rm -f pubspec.lock
	rm -f ios/Podfile.lock
	flutter clean
	flutter pub get
	cd ios && pod install && cd ..