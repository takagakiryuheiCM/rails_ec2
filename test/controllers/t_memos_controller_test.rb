require "test_helper"

class TMemosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @t_memo = t_memos(:one)
  end

  test "should get index" do
    get t_memos_url
    assert_response :success
  end

  test "should get new" do
    get new_t_memo_url
    assert_response :success
  end

  test "should create t_memo" do
    assert_difference("TMemo.count") do
      post t_memos_url, params: { t_memo: { memo: @t_memo.memo } }
    end

    assert_redirected_to t_memo_url(TMemo.last)
  end

  test "should show t_memo" do
    get t_memo_url(@t_memo)
    assert_response :success
  end

  test "should get edit" do
    get edit_t_memo_url(@t_memo)
    assert_response :success
  end

  test "should update t_memo" do
    patch t_memo_url(@t_memo), params: { t_memo: { memo: @t_memo.memo } }
    assert_redirected_to t_memo_url(@t_memo)
  end

  test "should destroy t_memo" do
    assert_difference("TMemo.count", -1) do
      delete t_memo_url(@t_memo)
    end

    assert_redirected_to t_memos_url
  end
end
