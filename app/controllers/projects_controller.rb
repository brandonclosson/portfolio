class ProjectsController < ApplicationController
  def index
    @projects = Project.all
    render json: @products
  end
end