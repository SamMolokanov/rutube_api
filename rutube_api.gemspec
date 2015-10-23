lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rutube_api/version'

Gem::Specification.new do |spec|
  spec.name          = 'rutube_api'
  spec.version       = RutubeApi::VERSION
  spec.authors       = ['Semjon Molokanov']
  spec.email         = ['molokanovcv@yandex.com']

  spec.summary       = %q{Rutube API wrapper}
  spec.description   = %q{Rutube API gem}
  spec.homepage      = "TODO: Put your gem's website or public repo URL here."
  spec.license       = 'MIT'

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise 'RubyGems 2.0 or newer is required to protect against public gem pushes.'
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.10'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec'
  spec.add_runtime_dependency('faraday', ['>= 0.7', '< 0.10'])
  spec.add_runtime_dependency('faraday_middleware', ['>= 0.8', '< 0.10'])
  spec.add_runtime_dependency('multi_json', '>= 1.0.3', '~> 1.0')
  spec.add_runtime_dependency('hashie',  '>= 0.4.0')
end
