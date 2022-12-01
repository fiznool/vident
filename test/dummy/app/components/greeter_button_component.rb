# frozen_string_literal: true

class GreeterButtonComponent < ViewComponent::Base
  include Vident::TypedComponent

  attribute :cta, String
  attribute :after_clicked_message, String, default: "You clicked me!"

  def call
    root_tag = root(
      element_tag: :button,
      actions: [:change_message],
      data_maps: [{after_clicked_message: after_clicked_message}],
      html_options: {class: "ml-4 whitespace-no-wrap bg-blue-500 hover:bg-blue-700 text-white font-bold py-2 px-4 rounded"}
    )
    render root_tag do
      @cta
    end
  end
end
