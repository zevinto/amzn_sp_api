require_relative 'lib/amzn_sp_api/amzn_sp_api_version'

Gem::Specification.new do |spec|
  spec.name = 'amzn_sp_api'
  spec.version = AmznSpApi::VERSION
  spec.authors = ['zevinto']
  spec.email = ['aarontzf@163.com']

  spec.summary = 'Ruby Gem for Amazon Selling Partner API (SP-API).'
  spec.description = 'Ruby Gem for Amazon Selling Partner API (SP-API).'
  spec.homepage = 'https://github.com/zevinto/amzn_sp_api'
  spec.license = 'MIT'
  spec.required_ruby_version = '>= 2.6.0'

  spec.metadata['homepage_uri'] = spec.homepage

  spec.add_runtime_dependency 'aws-sigv4', '~> 1.5'
  spec.add_runtime_dependency 'json', '~> 2.6'
  spec.add_runtime_dependency 'typhoeus', '~> 1.4'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir = 'exe'
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']
end
