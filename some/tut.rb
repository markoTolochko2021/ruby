class RubyTutorial

#   def self.description
#     a,b,c = 1,2,3
#     d = a ? b : c
#
#     p d
#     for i in 0..5
#       p i
#     end
#     p '----------------------------'
#
#
#     for  i in 0...5
#       p i
#     end
#   end
#   p '----------------------------'
#   array = ['Jack', 'Jim', 'Joe', 'Bob']
#
#   array.map { |i|  p i}
#   p '----------------------------'
#
#   p 1.methods
#   p 1.class
#   p 1.to_s
#   p 1.to_f
#   p 1.to_i
#
#   p rand (1...10)
 end
p '***********************************************************'

p 'JACK'.downcase
p 'jim'.upcase
p 'jack'.capitalize

array = ['Jack Daniels', 'Jim Bim', 'Red Label', 'Capitan Morgan']

array.map { |str| p str.length }

hash = {car: "audi", name: 'a8', engine: 'v12'}
p hash.reverse_each.to_h

[["audi", "black", 2008], ["bmw", 'red', 2014]].each do |car, color, year|

  puts "car: #{car}, color: #{color}, year: #{year}"
  end
p hash.empty?
p hash.size
p hash.keys
p hash.sort
  # RubyTutorial.description