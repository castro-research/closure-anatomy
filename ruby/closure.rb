def counter
  count = 0

  {
    inc: proc { count += 1 },
    get: proc { count },
    set: -> (val) { count = val }
  }
end

clos = counter

clos[:inc].call
clos[:inc].call
clos[:set].call(10)
raise "Esperado 10" unless clos[:get].call == 10

puts "Ruby is OK"