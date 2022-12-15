# frozen_string_literal: true

Gem::Specification.new do |spec|

  spec.license       = "MIT"
  spec.version       = "3.2.7"
  spec.name          = "parser"
  spec.authors       = ["eq19"]
  spec.email         = ["admin@eq19.com"]
  spec.homepage      = "https://github.com/eq19/parser"
  spec.summary       = "This repository act as 'the parser' with id=34"

# https://guides.rubygems.org/specification-reference/#files
  spec.files         = `git ls-files -z`.split("\x0").select { |f| f.match(%r!^(_data|_includes|_layouts|_plugins|_sass|assets|LICENSE|README)!i) }

  spec.add_runtime_dependency "jekyll", ">= 3.0"
# spec.add_development_dependency "rake", "~> 10.0"
# spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "prime", "~> 0.1.2"
  spec.add_development_dependency "netrc", "~> 0.11.0"
  spec.add_development_dependency "jemoji", "~> 0.12.0"
# spec.add_development_dependency "nuggets", "~> 1.6.1"
# spec.add_development_dependency "graphql", "~> 2.0.14"
# spec.add_development_dependency "rubocop", "~> 0.57.2"
# spec.add_development_dependency "nokogiri", "~> 1.13.7"
# spec.add_development_dependency "github_api", "~> 0.19.0"
  spec.add_development_dependency "jekyll-gist", "~> 1.5.0"
  spec.add_development_dependency "factory_bot", "~> 6.2.1"
  spec.add_development_dependency "jekyll-feed", "~> 0.15.1"
  spec.add_development_dependency "jekyll-avatar", "~> 0.7.0"
# spec.add_development_dependency "html-pipeline", "~> 2.14.2"
# spec.add_development_dependency "jekyll-seo-tag", "~> 2.8.0"
  spec.add_development_dependency "jekyll-tagging", "~> 1.1.0"
  spec.add_development_dependency "jekyll-sitemap", "~> 1.4.0"
  spec.add_development_dependency "jekyll-timeago", "~> 0.13.1"
  spec.add_development_dependency "jekyll-mentions", "~> 1.6.0"
  spec.add_development_dependency "jekyll-paginate", "~> 1.1.0"
  spec.add_development_dependency "jekyll-remote-theme", "~> 0.4.3"
  spec.add_development_dependency "jekyll-readme-index", "~> 0.3.0"
  spec.add_development_dependency "jekyll-coffeescript", "~> 1.1.1"
# spec.add_development_dependency "jekyll-include-cache", "~> 0.2.1"
  spec.add_development_dependency "jekyll-redirect-from", "~> 0.16.0"
  spec.add_development_dependency "jekyll-relative-links", "~> 0.6.1"
  spec.add_development_dependency "jekyll-default-layout", "~> 0.1.4"
  spec.add_development_dependency "jekyll-github-metadata", "~> 2.15.0"
# spec.add_development_dependency "jekyll-commonmark-ghpages", "~> 1.4.0"
# spec.add_development_dependency "github-pages-health-check", "~> 1.17.9"
  spec.add_development_dependency "jekyll-titles-from-headings", "~> 0.5.3"
  spec.add_development_dependency "jekyll-optional-front-matter", "~> 0.3.2"
end
