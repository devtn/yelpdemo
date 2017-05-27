require 'test_helper'

class ReivewsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @reivew = reivews(:one)
  end

  test "should get index" do
    get reivews_url
    assert_response :success
  end

  test "should get new" do
    get new_reivew_url
    assert_response :success
  end

  test "should create reivew" do
    assert_difference('Reivew.count') do
      post reivews_url, params: { reivew: { commnet: @reivew.commnet, rating: @reivew.rating } }
    end

    assert_redirected_to reivew_url(Reivew.last)
  end

  test "should show reivew" do
    get reivew_url(@reivew)
    assert_response :success
  end

  test "should get edit" do
    get edit_reivew_url(@reivew)
    assert_response :success
  end

  test "should update reivew" do
    patch reivew_url(@reivew), params: { reivew: { commnet: @reivew.commnet, rating: @reivew.rating } }
    assert_redirected_to reivew_url(@reivew)
  end

  test "should destroy reivew" do
    assert_difference('Reivew.count', -1) do
      delete reivew_url(@reivew)
    end

    assert_redirected_to reivews_url
  end
end
