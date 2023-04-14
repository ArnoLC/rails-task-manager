class TasksController < ApplicationController
    before_action :set_task, only: [:show, :edit, :update, :destroy]
    
    def index
        @Tasks = Task.all
    end

    def show        
    end

    def new
        @task = Task.new
    end

    def create
        @task = Task.new(task_params)
        @task.save
        redirect_to task_path(@task)
    end

    def edit        
    end

    def update        
        @Task.update(task_params)
        redirect_to task_path(@Task)
    end

    def destroy    
        @Task.destroy
        redirect_to tasks_path, status: :see_other
    end

    private

    def task_params
        params.require(:task).permit(:title, :details, :completed)
    end

    def set_task
        @Task = Task.find(params["id"])
    end
end
