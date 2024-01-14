require "application_system_test_case"

class TMemosTest < ApplicationSystemTestCase
  setup do
    @t_memo = t_memos(:one)
  end

  test "visiting the index" do
    visit t_memos_url
    assert_selector "h1", text: "T memos"
  end

  test "should create t memo" do
    visit t_memos_url
    click_on "New t memo"

    fill_in "Memo", with: @t_memo.memo
    click_on "Create T memo"

    assert_text "T memo was successfully created"
    click_on "Back"
  end

  test "should update T memo" do
    visit t_memo_url(@t_memo)
    click_on "Edit this t memo", match: :first

    fill_in "Memo", with: @t_memo.memo
    click_on "Update T memo"

    assert_text "T memo was successfully updated"
    click_on "Back"
  end

  test "should destroy T memo" do
    visit t_memo_url(@t_memo)
    click_on "Destroy this t memo", match: :first

    assert_text "T memo was successfully destroyed"
  end
end
