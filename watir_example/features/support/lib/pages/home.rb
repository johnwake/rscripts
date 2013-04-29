class HomePage
  include PageObject

  page_url 'http://www.google.co.uk'

  text_field :search_box, :id => 'gbqfq'
  button :search_button, :name => 'btnG'
end

