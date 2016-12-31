require 'test_helper'

class ApplicationHelperTest < ActionView::TestCase
  test "full title helper" do
    assert_equal full_title,   "KBOY's App"
    assert_equal full_title("Help"), "Help | KBOY's App"
  end
end
