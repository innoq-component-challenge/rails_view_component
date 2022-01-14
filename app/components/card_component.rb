# frozen_string_literal: true

class CardComponent < ViewComponent::Base
  renders_one :heading
  renders_one :footer

  def initialize(heading_level:, href: nil)
    @heading_level = heading_level
    @heading_tag = "h#{@heading_level}"
    @href = href
  end

end
