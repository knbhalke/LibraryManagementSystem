require 'test_helper'

class IssueBookDatesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @issue_book_date = issue_book_dates(:one)
  end

  test "should get index" do
    get issue_book_dates_url
    assert_response :success
  end

  test "should get new" do
    get new_issue_book_date_url
    assert_response :success
  end

  test "should create issue_book_date" do
    assert_difference('IssueBookDate.count') do
      post issue_book_dates_url, params: { issue_book_date: { book_id: @issue_book_date.book_id, issuedate: @issue_book_date.issuedate, user_id: @issue_book_date.user_id } }
    end

    assert_redirected_to issue_book_date_url(IssueBookDate.last)
  end

  test "should show issue_book_date" do
    get issue_book_date_url(@issue_book_date)
    assert_response :success
  end

  test "should get edit" do
    get edit_issue_book_date_url(@issue_book_date)
    assert_response :success
  end

  test "should update issue_book_date" do
    patch issue_book_date_url(@issue_book_date), params: { issue_book_date: { book_id: @issue_book_date.book_id, issuedate: @issue_book_date.issuedate, user_id: @issue_book_date.user_id } }
    assert_redirected_to issue_book_date_url(@issue_book_date)
  end

  test "should destroy issue_book_date" do
    assert_difference('IssueBookDate.count', -1) do
      delete issue_book_date_url(@issue_book_date)
    end

    assert_redirected_to issue_book_dates_url
  end
end
