class TasksController < ApplicationController
    def index
        @Tasks = Task.all
    end

    def show
        @Task = Task.find(params["id"])
    end
end
