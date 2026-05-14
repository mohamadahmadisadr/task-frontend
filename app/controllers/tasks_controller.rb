class TasksController < ApplicationController
    def index
        response TaskApi.all
        @tasks = JSON.parse(response.body)
    end

    def show
        response = TaskApi.find(params[:id])
        @task = JSON.parse(response.body)
    end

    def new
    end

    def create
        TaskApi.create(task_params)
        redirect_to tasks_path
    end

    def edit 
        response = TaskApi.find(params[:id])
        @task = JSON.parse(response.body)
    end

    def update 
        TaskApi.put(task_params)
        redirect_to tasks_path
    end

    def destroy
        TaskApi.delete(params[:id])
        redirect_to tasks_path
    end


    private

    def task_params
        {
            name: params[:name],
            done: params[:done] == "1"
        }
    end
    
end
