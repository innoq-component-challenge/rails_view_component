# frozen_string_literal: true

class ListComponent < ViewComponent::Base
  renders_many :items, "ItemComponent"

  def initialize(ratio: '1/3')
    cols = (12 * Rational(ratio)).to_i
    @cls1 = "col-md-#{cols}"
    @cls2 = "col-md-#{12-cols}"
  end

  def before_render
    items.each_with_index do |item, i|
      item.i = i
      item.cls1 = @cls1
      item.cls2 = @cls2
    end
  end

  class ItemComponent < ViewComponent::Base
    attr_accessor :i, :cls1, :cls2

    renders_one :key
    renders_one :value

    def initialize(key = nil, value = nil)
      @key = key
      @value = value
    end
  end

end
