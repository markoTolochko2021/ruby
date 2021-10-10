
module ItemContainer
  module ClassMethods
    MIN_PRICE = 5
    def min_price
      return MIN_PRICE
    end
  end

  module InstanceMethods
    def add_item(item)
      @items.push item if item.price > self.class.min_price
    end

    def remove_item
      @items.pop
    end
    def validate
      @items.each do |i|
        puts 'Item has no price ' if i.price.nil?
      end
    end

    def delete_invalid_items
      @items.delete_if do|i| i.price.nil?
      end
    end

    def count_valid_items
      @items.count { |i| i.price}
    end
  end

  def self.included(some_class)
    some_class.extend ClassMethods
    some_class.class_eval { include InstanceMethods}
  end
end