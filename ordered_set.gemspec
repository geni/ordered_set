lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |gem|
  gem.name          = 'ordered_set'
  gem.version       = IO.read('VERSION')
  gem.authors       = ['Justin Balthrop', 'Scott Steadman']
  gem.email         = ['git@justinbalthrop.com', 'scott.steadman@geni.com']
  gem.description   = %q{Like Set except it maintains the order of objects}
  gem.summary       = gem.description
  gem.homepage      = 'https://github.com/geni/ordered_set'
  gem.license       = 'MIT'

  gem.add_dependency 'deep_clonable', '>= 1.1.0'

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ['lib']
end
