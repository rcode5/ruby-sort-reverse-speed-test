#!/usr/bin/env ruby
require 'benchmark'

require './klass.rb'
require './instance.rb'
require './instance_as_class.rb'

methods = %w( add subtract identity )


NUM_REPS = 1000000
Benchmark.bm do |b|
  x = rand
  y = rand
  b.report("Klass") { NUM_REPS.times { Klass.add(x,y); Klass.subtract(x,y); Klass.identity(x) } }
  b.report("Instance") { NUM_REPS.times { Instance.new(x,y).add; Instance.new(x,y).subtract; Instance.new(x).identity } }
  b.report("Instance (with one new)") { i = Instance.new(x,y); NUM_REPS.times { i.add; i.subtract; i.identity } }
  b.report("InstanceAsClass") { NUM_REPS.times { InstanceAsClass.add(x,y); InstanceAsClass.subtract(x,y); InstanceAsClass.identity(x) } }
end
