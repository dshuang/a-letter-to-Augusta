#http://ruby-doc.org/core-2.0.0/Symbol.html

module One
  class Fred
  end
  $f1 = :Fred
end
module Two
  Fred = 1
  $f2 = :Fred
end
def Fred()
end
$f3 = :Fred

puts $f1.object_id
puts $f2.object_id
puts $f3.object_id
puts $f1
puts $f2
puts $f3


