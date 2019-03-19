
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "best_books_of_2018/version"

Gem::Specification.new do |spec|
  spec.name          = "best-books-of-2018"
  spec.version       = BestBooksOf2018::VERSION
  spec.authors       = ["'David Acosta'"]
  spec.email         = ["'davidacosta25081@yahoo.com'"]

  spec.summary       = "Best Books of 2018"
  spec.description   = "Browse a list of the best Books of the year 2018 according to the prestigious Washington Post and get a summary and details about each of them"
  spec.homepage      = "https://github.com/Davidacosta25081/best-books-of-2018"
  spec.license       = "MIT"



  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "nokogiri"


end
