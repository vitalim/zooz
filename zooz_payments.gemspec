# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'zooz_payments/version'

Gem::Specification.new do |gem|
  gem.name          = 'zooz_payments'
  gem.version       = ZoozPayments::VERSION
  gem.authors       = ['Vitali Margolin']
  gem.email         = %w(vitali.m86@gmail.com)
  gem.description   = %q{TODO: Write a gem description}
  gem.summary       = %q{TODO: Write a gem summary}
  gem.homepage      = ''
  gem.license       = 'MIT'

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}) { |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = %w(lib)

  gem.add_development_dependency 'rake'
  gem.add_development_dependency 'httparty'
  gem.add_development_dependency 'rspec', '~> 2.6'
end
