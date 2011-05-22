require 'test_helper'

class RandomControllerTest < ActionController::TestCase
  setup do
    @fortune = fortunes(:one)
  end
  
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fortune)
  end
  
  test "should route to random" do
    assert_routing '/random', { :controller => "random", :action => "index" }
  end
  
  test "should get json" do
    get :index, :format => :json
    assert_equal '{"fortune":{"text":"' + @fortune.text + '"}}', response.body
  end

end
