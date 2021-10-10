class Item

  attr_reader :real_price, :name, :weight
  attr_writer :price, :weight

  @@discount = 0.1

  def initialize(options = {})
    @real_price = options[:price]
    @name = options[:name]
  end

  def info
    if block_given?
      yield price
      yield name
    else "Nothing to show"
    end
  end

  def self.discount
    if Time.now.month == 6
      @@discount += 0.3
    else
      @@discount
    end
  end

  def price
    if @real_price
    (@real_price - real_price * self.class.discount) + tax
    end
  end

  private
  def tax
    type_tax = if self.class == VirtualItem
                 1
               else
                 2
               end
    cost_tax = if @real_price > 5
                 @real_price * 0.2
               else
                 @real_price * 0.1
               end
    return cost_tax + type_tax
  end
end


