$:.push File.expand_path("../lib", __FILE__)

Gem::Specification.new do |s|
  s.name        = "pseudo_random_value"
  s.version     = "1.0.2"
  s.date        = "2020-05-29"
  s.summary     = "Pseudo-random value construction"
  s.description = "Simple gem to create pseudo-random values"
  s.author      = "Dmitriy Smirnov"
  s.email       = "digens111@gmail.com"
  s.files       = `git ls-files`.split("\n")
  s.homepage    = "https://github.com/vergilsm/pseudo_random_value"
  s.license     = 'MIT'
end
