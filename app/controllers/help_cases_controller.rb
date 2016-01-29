class HelpCasesController < ApplicationController
  before_action :set_help_case, only: [:show, :edit, :update, :destroy]

  # GET /help_cases
  # GET /help_cases.json
  def index
    @help_cases = HelpCase.all
  end

  # GET /help_cases/1
  # GET /help_cases/1.json
  def show
  end

  # GET /help_cases/new
  def new
    @help_case = HelpCase.new
  end

  # GET /help_cases/1/edit
  def edit
  end

  # POST /help_cases
  # POST /help_cases.json
  def create
    @help_case = HelpCase.new(help_case_params)

    respond_to do |format|
      if @help_case.save
        format.html { redirect_to @help_case, notice: 'Help case was successfully created.' }
        format.json { render :show, status: :created, location: @help_case }
      else
        format.html { render :new }
        format.json { render json: @help_case.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /help_cases/1
  # PATCH/PUT /help_cases/1.json
  def update
    respond_to do |format|
      if @help_case.update(help_case_params)
        format.html { redirect_to @help_case, notice: 'Help case was successfully updated.' }
        format.json { render :show, status: :ok, location: @help_case }
      else
        format.html { render :edit }
        format.json { render json: @help_case.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /help_cases/1
  # DELETE /help_cases/1.json
  def destroy
    @help_case.destroy
    respond_to do |format|
      format.html { redirect_to help_cases_url, notice: 'Help case was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_help_case
      @help_case = HelpCase.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def help_case_params
      params.require(:help_case).permit(:title, :user_id, :description)
    end
end
