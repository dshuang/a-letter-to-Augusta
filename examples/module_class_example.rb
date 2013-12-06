module TestModule
  SOMECONSTANT=1  # case matters
  lower_case_var=2 

  def test_mod_method
    puts "called test_mod_method"
  end
end


class Foo
  include TestModule

  def test_method
    puts "called test_method"
  end  
  def your_method(*args, &block) # syntax error if you forget the & in front of block

    instance_eval &block
  end

  def no_instance_eval(*args, &block)
    block.call
  end
end

receiver = Foo.new

receiver.your_method do
  test_method # outputs:  called test_method
  test_mod_method # outputs:  called test_mod_method, provided by TestModule
  puts "Foo::SOMECONSTANT value : #{Foo::SOMECONSTANT}" # outputs:  Foo::SOMECONSTANT value : 1
end

receiver.no_instance_eval do
  begin
  test_method # causes an exception because it is not evaluating "test_method" in the context a Foo instance
  rescue Exception => e
    puts "caught exception in receiver.no_instance_eval: #{e}"
  end
end

receiver.test_method # outputs:  called test_method

puts Foo::SOMECONSTANT # outputs:  1

begin
  puts Foo::lower_case_var # causes an exception because "lower_case_var" is not a accessible constant 
rescue Exception => e
  puts "caught exception: #{e}"
end

