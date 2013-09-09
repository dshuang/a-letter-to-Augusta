Augusta = Awesome = true and Loved = Cherished = true

# must use floats 1.0, -1.0 when dividing by 0
Infinity = (+1.0 / 0)..(-1.0 / 0)
def Infinity.ends; false; end

# ruby 1.9 adds the stabby proc syntax which allows you to define a proc with an optional default parameter values, e.g. "myproc = -> (a=1,b=2) { puts a }"
Forever = -> { puts "Augusta, we \033[31m<3\033[0m you!"; sleep 5 }
Incredible = :wunderbar!

# adds "We" and "The" as modules to self.class (which is Object)
%w(We The).map { |const| self.class.const_set const, Module.new do; end }
OurFamily = :the_number_one_most_important_thing # not breakfast

# "*to" parameter bundles up multiple arguments from the caller into an Array
def a_letter(*to); yield Augusta; end

# "*" parameter bundles up multiple arguments, but cannot be referenced by any name
# instance_eval evaluates the block in the context of the surrounding method (as if the block was actually written inside the surrounding method)
class Numeric
  def method_missing(*); instance_eval { self }; end
end

# "&re" captures a block argument such as "some_method() do { :bunch_of_logic_treated_as_a_block_argument } end"
def twas(as_if_it_were = {}, &re)
  # hash object's fetch method looks up first argument and returns the associated value, or returns the second argument if nothing corresponds to the first argument
  memories = as_if_it_were.fetch :only, 1.day.ago
  re.call memories
end

class You
# "class << self" allows you to define static methods
# an alternative description is that "class You" has a singleton class, which is used when you run something such as "You.somemethod"
  class << self
    def will(always_be_loved); end
    def to(us = OurFamily); end
  end
end

class The::Universe < Infinity.class
  # this next line is just defining a "<<" method with a parameter named you
  def self.<<(you); end
end

def life
  Class.new do
    # "since" parameter expected to be a Hash
    def self.has(since); since.fetch :been, Incredible; end
  end
end

class Array
  def ever_since; end
end

class String
  def each;self.chars; end
end

module We
  class Wish
    def self.we_could(&blk)
      klass = Module.new do
        def self.experience(these_moments_for); Infinity; end
      end.instance_eval &blk
    end
  end
end

def over(and_over = Infinity); end

trap :INT, :IGNORE # Forever and ever!  
