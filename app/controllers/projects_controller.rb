class ProjectsController < ApplicationController
  http_basic_authenticate_with name: "OGNeeko", password: "number45", except: [:index, :show]

  def index
    @projects = Project.all
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)

    if @project.save
      redirect_to projects_path
    else
      render 'new'
    end
  end

  def show
    @project = Project.find(params[:id])
    @tools = @project.tools
  end

  def edit
    @project = Project.find(params[:id])
  end

  def update
    @project = Project.find(params[:id])

    if @project.update(project_params)
      redirect_to @project
    else
      render 'edit'
    end
  end


  def destroy
    @project = Project.find(params[:id])
    @project.destroy
    redirect_to projects_path
  end


  private
    def project_params
      params.require(:project).permit(:title, :description, :image, :live_site, :source_code, tool_ids:[])
    end
end
