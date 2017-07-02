require 'benchmark'

multiples_of_3 = Proc.new do |n|
  n % 3 == 0
end

with_to_a = Benchmark.realtime do
 100_000.times {(1..100).to_a.select(&multiples_of_3)}
end
with_select_only = Benchmark.realtime do
 100_000.times {(1..100).select(&multiples_of_3)}
end

puts "with_to_a: #{with_to_a} seconds."
puts "with_select_only: #{with_select_only} seconds."