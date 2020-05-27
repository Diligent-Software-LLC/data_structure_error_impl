lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require_relative 'lib/data_structure_error_impl/version'

Gem::Specification.new do |spec|

  # Required attributes.
  spec.name                  = 'data_structure_error_impl'
  spec.version               = DataStructureError::VERSION
  spec.authors               = ['Diligent Software LLC']
  spec.email                 = ['contact@diligentsoftware.org']
  spec.summary               = %q{Implements the DataStructureError interface.}
  spec.description           = %q{Implements the DataStructureError interface.
Donations support continuous improvement and maintenance. The aim is a reliable,
integrable, and endurable DataStructure library. Make a donation at the
project's collective page: https://opencollective.com/datastructure. One-time
 and recurring donations are available at $1, $2, $4, $8, and $16. Greatly
appreciated.}
  spec.homepage              = 'https://docs.diligentsoftware.org/' +
      'datastructure-1/error/implementation'
  spec.license = 'GPL-3.0'
  spec.required_ruby_version = '>= 2.6.5'

  # Metadata.
  spec.metadata['homepage_uri']    = spec.homepage
  spec.metadata['source_code_uri'] = 'https://www.github' +
      '.com/Diligent-Software-LLC/data_structure_error_impl'
  spec.metadata['changelog_uri']   = 'https://docs.diligentsoftware' +
      '.org/datastructure-1/error/packages#implementation_changelog'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added
  # into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f|
      f.match(%r{^(test|spec|features)/})
    }
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  # Development and testing dependencies.
  spec.add_development_dependency 'bundler', '~> 2.1'
  spec.add_development_dependency 'simplecov', '~> 0'
  spec.add_development_dependency 'data_structure_error_int', '~> 3'

end
