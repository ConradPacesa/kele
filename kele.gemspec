Gem::Sepcification.new do |s|
  s.name = 'kele'
  s.version = '0.0.1'
  s.date = '2017-06-29'
  s.summary = 'Kele API Client'
  s.description = 'A client for the Bloc API'
  s.authors = ['Conrad Pacesa']
  s.email = 'conradpacesa@gmail.com'
  s.files = ['lib/kele.rb']
  s.require_paths = ["lib"]
  s.homepage = 'http://rubygems.org/kele'
  s.license = 'MIT'
  s.add_runtime_dependency = 'httparty', '~> 0.13'
  s.add_runtime_dependency = 'json', '~> 2.1.0'
  s.add_runtime_dependency = 'vcr', '~> 2.0.3'
end
