class ProblemsController < ApplicationController
  
  
  def new
    @problem = Problem.new
  end

  def create
    @problem = Problem.new(problem_params)
    @problem.user = current_user
    authorize @problem
    
    @problem.save ? (redirect_to problem_path(@problem)) : (render :new)
  end

  def show
    @problem = Problem.find(params[:id])
  end

  def index
    
  end

  private

  def problem_params
    params.require(:problem).permit(
      :location, :name, :category, :description, :level
    )
  end
end
