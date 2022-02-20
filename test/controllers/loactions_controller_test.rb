require "test_helper"

class LoactionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @loaction = loactions(:one)
  end

  test "should get index" do
    get loactions_url
    assert_response :success
  end

  test "should get new" do
    get new_loaction_url
    assert_response :success
  end

  test "should create loaction" do
    assert_difference("Loaction.count") do
      post loactions_url, params: { loaction: {  } }
    end

    assert_redirected_to loaction_url(Loaction.last)
  end

  test "should show loaction" do
    get loaction_url(@loaction)
    assert_response :success
  end

  test "should get edit" do
    get edit_loaction_url(@loaction)
    assert_response :success
  end

  test "should update loaction" do
    patch loaction_url(@loaction), params: { loaction: {  } }
    assert_redirected_to loaction_url(@loaction)
  end

  test "should destroy loaction" do
    assert_difference("Loaction.count", -1) do
      delete loaction_url(@loaction)
    end

    assert_redirected_to loactions_url
  end
end
