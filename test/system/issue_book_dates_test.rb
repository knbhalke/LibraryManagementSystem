require "application_system_test_case"

class IssueBookDatesTest < ApplicationSystemTestCase
  setup do
    @issue_book_date = issue_book_dates(:one)
  end

  test "visiting the index" do
    visit issue_book_dates_url
    assert_selector "h1", text: "Issue Book Dates"
  end

  test "creating a Issue book date" do
    visit issue_book_dates_url
    click_on "New Issue Book Date"

    fill_in "Book", with: @issue_book_date.book_id
    fill_in "Issuedate", with: @issue_book_date.issuedate
    fill_in "User", with: @issue_book_date.user_id
    click_on "Create Issue book date"

    assert_text "Issue book date was successfully created"
    click_on "Back"
  end

  test "updating a Issue book date" do
    visit issue_book_dates_url
    click_on "Edit", match: :first

    fill_in "Book", with: @issue_book_date.book_id
    fill_in "Issuedate", with: @issue_book_date.issuedate
    fill_in "User", with: @issue_book_date.user_id
    click_on "Update Issue book date"

    assert_text "Issue book date was successfully updated"
    click_on "Back"
  end

  test "destroying a Issue book date" do
    visit issue_book_dates_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Issue book date was successfully destroyed"
  end
end
