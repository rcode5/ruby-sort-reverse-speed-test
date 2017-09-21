class Instance

   attr_reader :x, :y
   def initialize(x,y = nil)
     @x = x
     @y = y
   end
  
   def add
     x + y 
   end

   def subtract
     x + y 
   end

   def identity
     x
   end
end
