$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "acts_as_kiai/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "acts_as_kiai"
  s.version     = ActsAsKiai::VERSION
  s.authors     = ["Tomoyuki INOUE"]
  s.email       = ["tomoyuki.inoue@gmail.com"]
  s.homepage    = "http://codedehitokoto.blogspot.com"
  s.summary     = "気合を入れて保存できるプラグインです"
  s.description = "acts_as_kiaiを指定したモデルのtextフィールドに対して、保存時に文字列が置換され、気合が入るようになります。"
  s.licenses    = Dir["MIT-LICENSE"]

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.0.2"

  s.add_development_dependency "sqlite3"
end
