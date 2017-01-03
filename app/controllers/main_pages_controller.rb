class MainPagesController < ApplicationController
  before_action :set_main_page, only: [:show, :edit, :update, :destroy]

  # GET /main_pages
  # GET /main_pages.json
  def index
    @main_pages = MainPage.all
    @inventories = Inventory.all
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_main_page
      @main_page = MainPage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def main_page_params
      params.fetch(:main_page, {})
    end
end
