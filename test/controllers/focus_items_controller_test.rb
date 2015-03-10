require 'test_helper'

class FocusItemsControllerTest < ActionController::TestCase
  setup do
    @focus_item = focus_items(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:focus_items)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create focus_item" do
    assert_difference('FocusItem.count') do
      post :create, focus_item: { status: @focus_item.status, user_id: @focus_item.user_id }
    end

    assert_redirected_to focus_item_path(assigns(:focus_item))
  end

  test "should show focus_item" do
    get :show, id: @focus_item
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @focus_item
    assert_response :success
  end

  test "should update focus_item" do
    patch :update, id: @focus_item, focus_item: { status: @focus_item.status, user_id: @focus_item.user_id }
    assert_redirected_to focus_item_path(assigns(:focus_item))
  end

  test "should destroy focus_item" do
    assert_difference('FocusItem.count', -1) do
      delete :destroy, id: @focus_item
    end

    assert_redirected_to focus_items_path
  end
end
