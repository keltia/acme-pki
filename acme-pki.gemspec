# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
	spec.name = 'acme-pki'
	spec.version = '0.1.3'
	spec.authors = ['Aeris']
	spec.email = ['aeris@imirhil.fr']
	spec.summary = %q{Ruby client for Let’s Encrypt}
	spec.description = %q{Manage your keys, requests and certificates.}
	spec.homepage = 'https://github.com/aeris/acme-pki/'
	spec.license = 'AGPL-3.0+'

	spec.files = `git ls-files -z`.split("\x0")
	spec.executables = spec.files.grep(%r{^bin/}) { |f| File.basename f }
	spec.test_files = spec.files.grep %r{^(test|spec|features)/}
	spec.require_paths = %w(lib)

	spec.add_development_dependency 'bundler', '~> 1.11'

	spec.add_dependency 'acme-client', '~> 0.3.1'
	spec.add_dependency 'faraday_middleware', '~> 0.10.0'
	spec.add_dependency 'colorize', '~> 0.7.7'
	spec.add_dependency 'simpleidn', '~> 0.0.7'
end
