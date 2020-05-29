class TasksController < ApplicationController
  before_action :set_list
  before_action :set_task, only: [:edit, :update, :show, :destroy]

  def index 
    @tasks = @list.tasks
  end

  def show
  end
  
  def edit
  end

  def new
    @task = @list.tasks.new
  end

  def update
    if @task.update(task_params)
      redirect_to [@list, @task]
    else
      render :edit
    end
  end

  def destroy
    @task.destroy
    redirect_to list_tasks_path
  end

  def create
    @task = @list.tasks.new(task_params)
    if (@task.save)
      redirect_to list_tasks_path
    else
      render :new
    end
  end

  private
  def set_list
    @list = List.find(params[:list_id])
  end

  def set_task
    @task = Task.find(params[:id])
  end

  def task_params
    params.require(:task).permit(:name)
  end
end
