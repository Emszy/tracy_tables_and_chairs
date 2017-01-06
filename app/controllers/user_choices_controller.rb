class UserChoicesController < ApplicationController
  before_action :set_user_choice, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /user_choices
  # GET /user_choices.json
  def index
    @user_choices = UserChoice.all
  end
  # GET /user_choices/1
  # GET /user_choices/1.json
  def show
  end

  # GET /user_choices/new
  def new
    @user_choice = UserChoice.new
  end

  # GET /user_choices/1/edit
  def edit
  end

  # POST /user_choices
  # POST /user_choices.json
  def create
    @user_choice = UserChoice.new(user_choice_params)
    @user_choice.first_name = current_user.first_name
    @user_choice.last_name = current_user.last_name

    respond_to do |format|
      if @user_choice.save
        format.html { redirect_to @user_choice, notice: 'Your request was successfully created.' }
        format.json { render :show, status: :created, location: @user_choice }
      else
        format.html { render :new }
        format.json { render json: @user_choice.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_choices/1
  # PATCH/PUT /user_choices/1.json
  def update
    respond_to do |format|
      if @user_choice.update(user_choice_params)
        format.html { redirect_to @user_choice, notice: 'Your choice was successfully updated.' }
        format.json { render :show, status: :ok, location: @user_choice }
      else
        format.html { render :edit }
        format.json { render json: @user_choice.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_choices/1
  # DELETE /user_choices/1.json
  def destroy
    @user_choice.destroy
    respond_to do |format|
      format.html { redirect_to user_choices_url, notice: 'Your choice was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_choice
      @user_choice = UserChoice.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_choice_params
      params.require(:user_choice).permit(:table_quantity, :chair_quantity, :city, :price, :date, :first_name, :last_name, :street_address)
    end
end
