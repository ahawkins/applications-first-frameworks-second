require_relative '../test_helper'

module AcceptanceTests
  class PublishPostTest < ActionDispatch::IntegrationTest
    def test_publishes_the_post
      visit '/posts/new'

      fill_in :title, with: 'Magic Post'
      fill_in :text, with: 'Oh so Magical'

      click_button :publish

      assert page.has_content('Magic Post')
      assert page.has_content('Oh so Magical')
    end
  end
end
