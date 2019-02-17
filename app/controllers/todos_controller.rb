class TodosController < ApplicationController
  def index
    @projects1 = Project.where(:id =>["1"])
    @todos1 = Todo.where(:project_id =>["1"])
    @projects2 = Project.where(:id =>["2"])
    @todos2 = Todo.where(:project_id =>["2"])
    @projects3 = Project.where(:id =>["3"])
    @todos3 = Todo.where(:project_id =>["3"])
  end

  def update
    @project = Project.find params[:id]
    @todo = Todo.find params[:id]
  end

  def new
    @project = Project.new
    @todo = Todo.new
  end

  def create
    @project = Project.new(project_params)

    @project.save

    @todo = Todo.new(todo_params)

    @todo.save

    redirect_to projects_path
  end

  private def project_params
    params.permit(:title)
  end

  def todo_params
    params.require(:todo).permit(:text, :iscompleted, :project_id)
  end
end
