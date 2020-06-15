class RatsController < ApplicationController
  before_action :set_rat, only: [:show, :edit, :update, :destroy]
  def index
    @rats = Rat.all
  end

  def new
    @rat = Rat.new
  end

  def create
    @rat = Rat.new(rat_params)
    if params[:back]
      render :new
    else
      if @rat.save
        redirect_to rats_path, notice: "リークしました！"
      else
        render :new
      end
    end
  end

  def show
    @rat = Rat.find(params[:id])
  end

  def edit
    @rat = Rat.find(params[:id])
  end

  def update
    @rat = Rat.find(params[:id])
    if @rat.update(rat_params)
      redirect_to rats_path, notice: "情報を編集しました！"
    else
      render :edit
    end
  end

  def destroy
    @rat.destroy
    redirect_to rats_path, notice:"情報を削除しました！"
  end

  def confirm
    @rat = Rat.new(rat_params)
  end

  private
  def rat_params
    params.require(:rat).permit(:title, :content)
  end
  def set_rat
    @rat = Rat.find(params[:id])
  end
end
