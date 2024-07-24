test:
	@echo "╠ Running test..."
	flutter test

deploy-android:
	@echo "╠ Sending Android Build to Closed Testing..."
	gem install bundler
	cd android && bundle install && bundle update
	cd android/fastlane && bundle exec fastlane playstore

deploy-ios:
	@echo "╠ Sending iOS Build to TestFlight..."
	rm Gemfile.lock
	gem install bundler
	bundle update
	cd android && bundle clean --force && bundle install
	cd ios/fastlane && bundle exec fastlane appstoreconnect

deploy: test deploy-android deploy-ios

.PHONY: test deploy-android deploy-ios deploy