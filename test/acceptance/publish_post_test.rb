require_relative '../test_helper'

module AcceptanceTests
  class PublishPostTest < ActionDispatch::IntegrationTest
    def test_publishes_the_post
      visit '/posts/new'

      fill_in :post_title, with: 'Magic Post'
      fill_in :post_text, with: 'Oh so Magical'

      click_button :publish

      assert page.has_content?('Magic Post'), 'Title missing'
      assert page.has_content?('Oh so Magical'), 'Text missing'
    end
  end
end
