class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def new
    @task = Task.new(task: params[:task])
  end

  def create
    @task = Task.create(task_params)
    redirect_to tasks_path
  end

  def destroy
  end

  private

  def task_params
    params.require(:task).permit(:task)
  end

end
