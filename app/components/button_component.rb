# frozen_string_literal: true

class ButtonComponent < ViewComponent::Base

  STYLES = {
    default: 'btn-secondary',
    cta: 'btn-primary'
  }.with_indifferent_access

  def initialize(options = {})
    @style = options.delete(:style) || "default"
    @cls = "#{STYLES[@style] || STYLES[:default]} #{options.delete(:additional_classes)}".strip
    @custom_attributes = options
  end

end
