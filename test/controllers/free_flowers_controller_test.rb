require 'test_helper'

class FreeFlowersControllerTest < ActionController::TestCase
  setup do
    @free_flower = free_flowers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:free_flowers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create free_flower" do
    assert_difference('FreeFlower.count') do
      post :create, free_flower: { description: @free_flower.description, image_url: @free_flower.image_url, title: @free_flower.title }
    end

    assert_redirected_to free_flower_path(assigns(:free_flower))
  end

  test "should show free_flower" do
    get :show, id: @free_flower
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @free_flower
    assert_response :success
  end

  test "should update free_flower" do
    patch :update, id: @free_flower, free_flower: { description: @free_flower.description, image_url: @free_flower.image_url, title: @free_flower.title }
    assert_redirected_to free_flower_path(assigns(:free_flower))
  end

  test "should destroy free_flower" do
    assert_difference('FreeFlower.count', -1) do
      delete :destroy, id: @free_flower
    end

    assert_redirected_to free_flowers_path
  end
end
