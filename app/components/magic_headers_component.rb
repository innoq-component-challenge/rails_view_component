# frozen_string_literal: true

class MagicHeadersComponent < ViewComponent::Base

  def initialize(parent_level: 0)
    @heading_level = parent_level + 1
  end

  def heading(text)
    content_tag "h#{@heading_level}", text
  end

  def section(&block)
    render(MagicHeadersComponent.new(parent_level: @heading_level), &block)
  end

end
