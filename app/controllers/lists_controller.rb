class ListsController < ApplicationController
  before_action :set_list, only: [:show, :destroy] #

  def index
    @lists = List.all
  end

  def show
    @bookmark = Bookmark.new # this doesn't have to be here because of the before action, now the show runs twice of so
  end

  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)
    if @list.save
      redirect_to list_path(@list)
    else
      render :new
    end
  end

  def destroy
    @list.destroy
    redirect_to lists_path
  end

  private

  def set_list
    @list = List.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def list_params
    params.require(:list).permit(:name)
  end
end
