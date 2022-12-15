source "https://rubygems.org"
# Hello! This is where you manage which Jekyll version is used to run.
# When you want to use a different version, change it below, save the
# file and run `bundle install`. Run Jekyll with `bundle exec`, like so:
#
#     bundle exec jekyll serve
#
# This will help ensure the proper Jekyll version is running.
# https://linuxtut.com/en/49d3975a0620a85a7fa4/

gemspec
# ruby "3.1.2"
gem "jekyll", "~> 4.2.2"

# If you want to use GitHub Pages, comment the "gem "jekyll"" above and
# uncomment the line below. To upgrade, run `bundle update github-pages`.
# https://github.com/jekyll/jekyll/blob/master/jekyll.gemspec

gem "github-pages-unscramble", group: :jekyll_plugins

# Windows and JRuby does not include zoneinfo files, so bundle the
# tzinfo-data gem and associated library.

platforms :mingw, :x64_mingw, :mswin, :jruby do
  gem "tzinfo", "~> 1.2"
  gem "tzinfo-data"
end

# Performance-booster for watching directories on Windows

gem "wdm", "~> 0.1.1", :platforms => [:mingw, :x64_mingw, :mswin]
