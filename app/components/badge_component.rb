# frozen_string_literal: true

class BadgeComponent < ViewComponent::Base
  TYPES = {
    danger: "bg-danger",
    default: "bg-secondary"
  }.with_indifferent_access

  def initialize(type: "default")
    @type = type
    @cls = "badge #{TYPES[type]}"
  end

end
