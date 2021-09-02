class PrototypesController < ApplicationController
  def index
    
  end

  def new
    @prototype = Prototype.new
  end

  def create
    Prototype.create(prototype_params)
  end

  private
  def prototype_params
    params.require(:prototype).permit(:title, :catch_copy, :concept, :image, :user).merge(user_id: current_user.id)
  end
end
