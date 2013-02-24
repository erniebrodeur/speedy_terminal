
# 10,000 lines of output, no wait, timing results printed to screen.

def run
  t = Time.now
  (1..10000).each do
    puts '12345678901234567890123456789012345678901234567890123456789012345678901234567890'
  end

  return (Time.now - t).to_f
end


runs = []
average = 0

(1..10).each do
  r = run
  runs << r
  average += r
end

average = average / 10
puts "Average over ten runs (in seconds), results: #{average}"

