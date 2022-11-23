require 'test_helper'

class ThresControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get thres_index_url
    assert_response :success
  end

end
