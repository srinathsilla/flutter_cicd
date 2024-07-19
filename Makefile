test:
    @echo "╠ Running test..."
    flutter test

deploy-android:
    @echo "╠ Sending Android Build to Closed Testing..."
    cd android/fastlane && bundle exec fastlane playstore

deploy-ios:
    @echo "╠ Sending iOS Build to TestFlight..."
    cd ios/fastlane && bundle exec fastlane appstoreconnect

deploy: test deploy-android deploy-ios

.PHONY: test deploy-android deploy-ios
