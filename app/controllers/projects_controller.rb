class ProjectsController < ApplicationController
  def index
    @projects = Project.all
    render json: @products

    respond_to do |format|
      format.html {}
      format.json { render json: @projects }
    end
  end
end