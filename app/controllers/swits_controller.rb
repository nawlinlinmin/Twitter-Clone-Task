class SwitsController < ApplicationController
  before_action :set_swit, only: [:show, :edit, :update, :destroy]
  def index
      @swits = Swit.all
  end
  def new
    @swit = Swit.new
  end
  def show
  end
  def confirm
    @swit = Swit.new(swit_params)
    render :new if @swit.invalid?
  end
  def create
    @swit = Swit.create(swit_params)
    if params[:back]
        render :new
    else
    if @swit.save
      redirect_to swits_path, notice: "We have received your swit form!"
    else
      render :new
    end
  end
end
  def edit
    @swit = Swit.find(params[:id])
  end
  def update
    @swit = Swit.find(params[:id])
    if @swit.update(swit_params)
      redirect_to swits_path, notice: "Edited swit!"
    else
      render :edit
    end
  end
  def destroy
     @swit.destroy
     redirect_to swits_path, notice:"Deleted swit！"
  end
  private
  def swit_params
    params.require(:swit).permit(:content)
  end
  def set_swit
    @swit = Swit.find(params[:id])
  end
end
