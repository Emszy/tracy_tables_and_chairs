class MainPagesController < ApplicationController
  before_action :set_main_page, only: [:show, :edit, :update, :destroy]

  # GET /main_pages
  # GET /main_pages.json
  def index
    if user_signed_in?
      redirect_to new_user_choice_path
   else 
     @main_pages = MainPage.all
      @customer_order = MainPage.new
   end
   
  end


  def new
    @customer_orders = MainPage.new
  end

  def show
  end

 
    def create
    @customer_orders = MainPage.new(@customer_order_params)

    respond_to do |format|
      if @customer_orders.save
        format.html { redirect_to @customer_orders, notice: 'customer_orders was successfully created.' }
        format.json { render :show, status: :created, location: @customer_orders }
      else
        format.html { render :new }
        format.json { render json: @customer_orders.errors, status: :unprocessable_entity }
      end
    end
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_main_page
      @main_page = MainPage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def main_page_params
      params.require(:customer_orders).permit(:tables, :chairs)
    end
end
