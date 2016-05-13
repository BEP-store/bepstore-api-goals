$LOAD_PATH.push File.expand_path('../lib', __FILE__)

require 'bepstore/goals/version'

Gem::Specification.new do |s|
  s.name        = 'bepstore-goals'
  s.version     = BEPStore::Goals::VERSION
  s.authors     = ['BEPStore']
  s.summary     = 'BEPStore Goals Engine'

  s.files = Dir['{app,config,lib}/**/*', 'Rakefile', 'README.md']
  # s.test_files = Dir["test/**/*"]
  s.test_files = Dir['spec/**/*']

  s.add_development_dependency 'rails'
  s.add_development_dependency 'sqlite3'
end
