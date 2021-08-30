class IssueBookDatesController < ApplicationController
  before_action :set_issue_book_date, only: %i[ show edit update destroy ]

  # GET /issue_book_dates or /issue_book_dates.json
  def index
    @issue_book_dates = IssueBookDate.all
  end

  # GET /issue_book_dates/1 or /issue_book_dates/1.json
  def show
  end

  # GET /issue_book_dates/new
  def new
    @issue_book_date = IssueBookDate.new
  end

  # GET /issue_book_dates/1/edit
  def edit
  end

  # POST /issue_book_dates or /issue_book_dates.json
  def create
    @issue_book_date = IssueBookDate.new(issue_book_date_params)

    respond_to do |format|
      if @issue_book_date.save
        format.html { redirect_to @issue_book_date, notice: "Issue book date was successfully created." }
        format.json { render :show, status: :created, location: @issue_book_date }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @issue_book_date.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /issue_book_dates/1 or /issue_book_dates/1.json
  def update
    respond_to do |format|
      if @issue_book_date.update(issue_book_date_params)
        format.html { redirect_to @issue_book_date, notice: "Issue book date was successfully updated." }
        format.json { render :show, status: :ok, location: @issue_book_date }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @issue_book_date.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /issue_book_dates/1 or /issue_book_dates/1.json
  def destroy
    @issue_book_date.destroy
    respond_to do |format|
      format.html { redirect_to issue_book_dates_url, notice: "Issue book date was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_issue_book_date
      @issue_book_date = IssueBookDate.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def issue_book_date_params
      params.require(:issue_book_date).permit(:issuedate, :user_id, :book_id)
    end
end
