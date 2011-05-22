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
    get_fortune
    assert_equal '{"fortune":{"text":"' + @fortune.text + '"}}', response.body
  end
  
  test "should get xml" do
    get :index, :format => :xml
    get_fortune
    assert_equal '<?xml version="1.0" encoding="UTF-8"?>' + "\n<fortune>\n  <text>" + @fortune.text  + "</text>\n</fortune>\n", response.body
  end
  
  test "should get plain text" do
    get :index, :format => :text
    get_fortune
    assert_equal @fortune.text, response.body
  end

  private
  
    def get_fortune
      # FIXME: @fortune is non-deterministic but this seems like an egregious mistake.
      @fortune = @controller.instance_variable_get("@fortune")
    end

end
