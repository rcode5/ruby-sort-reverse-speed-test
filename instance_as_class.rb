class InstanceAsClass

   attr_reader :x, :y

   def self.add(*args)
     self.new(*args).add
   end

   def self.subtract(*args)
     self.new(*args).subtract
   end
     
   def self.identity(*args)
     self.new(*args).identity
   end

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
