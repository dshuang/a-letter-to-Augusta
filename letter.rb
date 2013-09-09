require "./love"
# requires ruby 1.9 

# passes a hash of :to=>Augusta to the method a_letter  
a_letter to: Augusta do
  twas(only: 16.months.ago) { The::Universe << You.to(OurFamily) }
  # "*" is the splat operator, in this case coercing the string into an array
# in ruby 1.9.3, you must assign " *"wonderful!" " to a variable and then use the variable with zip to get a interleaved array.  The code as it currently stands will act as if an empty array was passed to zip
  life.has :been => %w(i n c r e d i b l y).zip(*"wonderful!").ever_since
  We::Wish.we_could { experience these_moments: over & over }
  You.will always_be: Loved, and: Cherished

  # "Forever.()" runs the Forever proc (notice the dot operator)
  until Infinity.ends do; Forever.(); end
end
