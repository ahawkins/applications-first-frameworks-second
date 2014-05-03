require_relative '../test_helper'

module AcceptanceTests
  class PublishPostTest < ActionDispatch::IntegrationTest
    def test_publishes_the_post
      visit '/posts/new'

      fill_in :web_publish_post_form_text, with: 'Magic Post'
      fill_in :web_publish_post_form_title, with: 'Oh so Magical'

      click_button :publish

      assert page.has_content?('Magic Post'), 'Title missing'
      assert page.has_content?('Oh so Magical'), 'Text missing'
    end

    def test_shows_an_error_message_if_invalid_data
      visit '/posts/new'

      click_button :publish

      assert page.has_css?('#error'), 'Error not displayed'
    end
  end
end
