require 'test_helper'

class PhototypesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get phototypes_index_url
    assert_response :success
  end

end
