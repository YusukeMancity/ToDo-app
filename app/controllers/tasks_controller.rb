class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def new
    @task = Task.new(task: params[:task])
  end

  def create
  end

  def destroy
  end
end
