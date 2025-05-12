class ButtonComponent < ViewComponent::Base
  def initialize(text:, variant: "primary", type: "button", onclick: nil, classes: "", data: {})
    @text = text
    @variant = variant
    @type = type
    @onclick = onclick
    @classes = classes
    @data = data
  end

  def variant_classes
    {
      "primary" => "bg-indigo-600 hover:bg-indigo-700",
      "danger" => "bg-red-600 hover:bg-red-700",
      "success" => "bg-green-600 hover:bg-green-700"
    }[@variant] || "bg-gray-500 hover:bg-gray-600"
  end

  def additional_classes
    @classes.split(" ").join(" ")
  end

  # Combine any data-attributes (if passed)
  def data_attributes
    @data.map { |key, value| "data-#{key}=\"#{value}\"" }.join(" ") unless @data.empty?
  end
end
