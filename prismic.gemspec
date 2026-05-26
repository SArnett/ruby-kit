lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'prismic/version'

Gem::Specification.new do |spec|
  spec.name          = 'prismic.io'
  spec.version       = Prismic::VERSION
  spec.authors       = ["Étienne Vallette d'Osia", 'Erwan Loisant', 'Samy Dindane', 'Rudy Rigot']
  spec.email         = ['evo@zenexity.com']
  spec.description   = "The standard Prismic.io's API library."
  spec.summary       = 'Prismic.io development kit'
  spec.homepage      = 'http://prismic.io'
  spec.license       = 'Apache-2.0'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']
  spec.required_ruby_version = '>= 3.4.9'

  spec.add_development_dependency 'nokogiri', '~> 1.19'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_runtime_dependency 'hashery', '~> 2.1.1'
end
