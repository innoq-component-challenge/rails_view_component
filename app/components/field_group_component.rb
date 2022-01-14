# frozen_string_literal: true

class FieldGroupComponent < ViewComponent::Base

  def initialize(label:, name:, **options)
    @label = label
    @name = name
    @error = options.delete(:error)
    @cls = "form-control #{'is-invalid' if @error.present?}".strip
    @id = options.delete(:id) || "#{name.parameterize}_#{Random.rand(10000)}"
    @type = options.delete(:type) || 'text'
    @value = options.delete(:value)
    @options = options
  end

end
