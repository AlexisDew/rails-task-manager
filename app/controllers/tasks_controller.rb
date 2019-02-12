class TasksController < ApplicationController
  before_action :set_task, only: [:show, :edit]

  def index         # GET /tasks
    @tasks = Task.all
  end

  def show          # GET /tasks/:id
  end

  def new           # GET /tasks/new
    @task = Task.new
  end

  def create        # POST /tasks
    @task = Task.new(task_param)
    @task.save
    redirect_to tasks_path
  end

  def edit          # GET /tasks/:id/edit
  end

  def update        # PATCH /tasks/:id
  end

  def destroy       # DELETE /tasks/:id
  end

  private

  def set_task
    @task = Task.find(params[:id].to_i)
  end

  def task_param
    params.require(:task).permit(:title, :details)
  end

end
