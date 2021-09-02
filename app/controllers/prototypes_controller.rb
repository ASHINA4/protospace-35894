class PrototypesController < ApplicationController
  before_action :move_to_index, except: :index
  
  def index
    
  end

  def new
    @prototype = Prototype.new
  end

  def create
    if
      Prototype.create(prototype_params)
      redirect_to root_path
    else
      render :new
    end
  end

  private
  def prototype_params
    params.require(:prototype).permit(:title, :catch_copy, :concept, :image, :user).merge(user_id: current_user.id)
  end

  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end
end
