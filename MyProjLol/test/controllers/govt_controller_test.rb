require 'test_helper'

class GovtControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get govt_index_url
    assert_response :success
  end

end
