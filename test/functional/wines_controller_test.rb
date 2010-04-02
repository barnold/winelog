require 'test_helper'

class WinesControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end
  
  def test_show
    get :show, :id => Wine.first
    assert_template 'show'
  end
  
  def test_new
    get :new
    assert_template 'new'
  end
  
  def test_create_invalid
    Wine.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end
  
  def test_create_valid
    Wine.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to wine_url(assigns(:wine))
  end
  
  def test_edit
    get :edit, :id => Wine.first
    assert_template 'edit'
  end
  
  def test_update_invalid
    Wine.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Wine.first
    assert_template 'edit'
  end
  
  def test_update_valid
    Wine.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Wine.first
    assert_redirected_to wine_url(assigns(:wine))
  end
  
  def test_destroy
    wine = Wine.first
    delete :destroy, :id => wine
    assert_redirected_to wines_url
    assert !Wine.exists?(wine.id)
  end
end
