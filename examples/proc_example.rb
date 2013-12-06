#http://www.ruby-doc.org/core-2.0.0/Proc.html
#Proc objects are blocks of code that have been bound to a set of local variables. Once bound, the code may be called in different contexts and still access those variables.

# -> syntax requires 1.9
proc1 = -> { puts 'proc1 ran'; }
proc1.() 


proc1withargs = ->(a=1) { puts "proc1withargs ran, default value of a is 1.  a=#{a}"; }
# notice the . before the parenthesis when running the proc
proc1withargs.(); 
proc1withargs.(3); 


def gen_times(factor)
  return Proc.new {|n| n*factor }
end
times3 = gen_times(3)
times5 = gen_times(5)
times3.call(12)               #=> 36
times5.call(5)                #=> 25
times3.call(times5.call(4))   #=> 60


