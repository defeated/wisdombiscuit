require 'test_helper'

class RandomControllerTest < ActionController::TestCase

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
    
    # FIXME: @fortune is non-deterministic but this seems like an egregious mistake.
    fortune = @controller.instance_variable_get("@fortune")
    
    assert_equal '{"fortune":{"text":"' + fortune.text + '"}}', response.body
  end

end
