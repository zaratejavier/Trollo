class ListsController < ApplicationController
  before_action :set_list, only: [:edit, :update, :destroy, :show]

  def index
    @lists = List.all
  end

  def show
  end

  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)
    if (@list.save)
      redirect_to lists_path
    else 
      render :new
    end
  end

  def edit
    @list = List.find(params[:id])
  end

  def update
    @list = List.find(params[:id])
    if (@list.update(lists_params))
      redirect_to lists_path
    else
      render :edit
    end
  end

  def destroy
    @list.destroy
    redirect_to lists_path
  end

  private

  def set_list
  end

  def list_params
    params.require(:list).permit(:name)
  end
end