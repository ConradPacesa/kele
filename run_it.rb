require "./lib/kele"
puts ENV['USERNAME']
puts ENV['PASSWORD']

cp = Kele.new(ENV['USERNAME'], ENV['PASSWORD'])
