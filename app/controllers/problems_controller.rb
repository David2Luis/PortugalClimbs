class ProblemsController < ApplicationController
  
  
  def new
    @problem = Problem.new
    # authorize @problem
  end

  def create
    @problem = Problem.new(category:"c1", description: "hello", level: "one", name:"test")
    @problem.user = current_user
    # authorize @problem
    
    @problem.save ? (redirect_to problem_path(@problem)) : (render :new)
  end

  def create
    @problem = Problem.new(problem_params)
    if @client.save
      redirect_to @client
    else
      # This line overrides the default rendering behavior, which
      # would have been to render the "create" view.
      render "new"
    end

  def show
    @problem = Problem.find(params[:id])
  end

  def index
    
  end

  private

  def problem_params
    params.require(:problem).permit(
      :name, :category, :description, :level, :location
    )
  end
end
