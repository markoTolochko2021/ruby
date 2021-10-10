def some_method1
  puts 'method'
end

def  some_method2(name)
  puts 'name ' + name
end

def some_method3
  name = 'Joe'
  some_method1
  some_method2(name)
end

some_method3

