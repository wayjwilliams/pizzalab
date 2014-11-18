class Api::PizzaJointsController < ApplicationController

  protect_from_forgery with: :null_session

  def index
    @pizza_joints = Pizza_joint.all
    render json: @pizza_joints
  end

  def create
    @pizza_joint = Pizza_joint.new(params.require(:pizza_joint).permit(:name, :city))
    @pizza_joint.save
    render json: @pizza_joint
  end

  def update
    @pizza_joint = Pizza_joint.find(params[:id])
    @pizza_joint.update(params.require(:pizza_joint).permit(:name, :city))
    render json: @pizza_joint
  end

end
