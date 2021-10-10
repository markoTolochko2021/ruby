require_relative 'item'
class RealItem < Item

  def initialize(options)
    @weight = options[:weight]
    super
  end

  def info
    if block_given?
      yield weight
      super
    end
  end

end
