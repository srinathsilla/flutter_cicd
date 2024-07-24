test:
	@echo "╠ Running test..."
	flutter test

deploy-android:
	@echo "╠ Sending Android Build to Closed Testing..."
	cd android && bundle install
	cd android/fastlane && bundle exec fastlane playstore

deploy-ios:
	@echo "╠ Sending iOS Build to TestFlight..."
	cd ios && rm -f Gemfile.lock && gem update --system && gem install bundler -v 2.5.15 && bundle install
	cd ios/fastlane && bundle exec fastlane appstoreconnect

deploy: test deploy-android deploy-ios

.PHONY: test deploy-android deploy-ios deploy