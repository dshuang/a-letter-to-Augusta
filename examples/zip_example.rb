def life
  Class.new do
    # "since" parameter expected to be a Hash
    def self.has(since); puts (since.fetch :been); end
  end
end
class String
  def each; self.chars.each do |x| yield(x) end; end
end


life.has :been => %w(i n c r e d i b l y).zip(*"wonderful!")

puts "====="
x = "wonderful!".split("")
life.has :been => %w(i n c r e d i b l y).zip(x)
