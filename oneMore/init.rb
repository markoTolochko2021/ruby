Dir["*.rb"].each { |file| require_relative file unless file == 'init.rb' }

@items = []
@items << VirtualItem.new({price: 300, weight: 300, name: 'car'})
@items << RealItem.new({price: 300, weight: 300, name: 'cycle'})
@items << RealItem.new({price: 300, weight: 300, name: 'bike'})


