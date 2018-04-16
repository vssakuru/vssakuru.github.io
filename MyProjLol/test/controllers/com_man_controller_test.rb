require 'test_helper'

class ComManControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get com_man_index_url
    assert_response :success
  end

end
