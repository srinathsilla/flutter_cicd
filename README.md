# flutter_cicd

Setting up Fastlane:-

1. Install ruby to use "gem" which is package or library manager for ruby programming language
- Don't use mac installed ruby
- Recommended - use ruby package manager to install ruby, easy to switch between ruby versions
- I had ruby pre-installed through Homebrew, I'm going with latest version available on brew i.e. 3.3.4
	- brew update
	- brew outdated
	- brew upgrade ruby
	- brew info ruby
	- which ruby	(/opt/homebrew/opt/ruby/bin/ruby)
	- ruby -v

2. Install bundler
	- gem install bundler

3. Create a ./Gemfile in the root directory of your project with the content
	source "https://rubygems.org"

	gem "fastlane"

4. Run bundle update and add both the ./Gemfile and the ./Gemfile.lock to version control

5. Every time you run fastlane, use bundle exec fastlane [lane]

6. On your CI, add bundle install as your first build step

7. To update fastlane, just run bundle update fastlane