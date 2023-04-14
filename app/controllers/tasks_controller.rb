class TasksController < ApplicationController
    def index
        @Tasks = Task.all
    end

    def show
        @Task = Task.find(params["id"])
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
        @Task = Task.find(params["id"])
    end

    def update
        @Task = Task.find(params["id"])
        @Task.update(task_params)
        redirect_to task_path(@Task)
    end

    def destroy
        @Task = Task.find(params["id"])
        @Task.destroy
        redirect_to tasks_path, status: :see_other
    end

    private

    def task_params
        params.require(:task).permit(:title, :details, :completed)
    end
end
