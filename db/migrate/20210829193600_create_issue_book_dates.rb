class CreateIssueBookDates < ActiveRecord::Migration[5.2]
  def change
    create_table :issue_book_dates do |t|
      t.datetime :issuedate
      t.references :user, foreign_key: true
      t.references :book, foreign_key: true

      t.timestamps
    end
  end
end
