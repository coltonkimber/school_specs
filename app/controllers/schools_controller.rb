class SchoolsController < ApplicationController
  # before_action :set_school, only: [:show, :edit, :update, :destroy]



  # GET /schools
  def index
    @school = School.all
  end

  # GET /schools/1
  def show
  end

  # GET /schools/new
  def new
    @school = School.new
  end

  # GET /schools/edit
  def update
    if 
      @school = School.find(params[:id])
      @school.update(school_params)
      redirect_to @school
    else
      redirect_to :edit
    end
  end

  def edit
  end


  # POST /schools
  def create
    @school = School.new(school_params)
    if 
      @school.save
      redirect_to @school
    else
      render :new
    end
  end

  # DELETE /schools
  def destroy
    @school = School.find(params[:id])
    @school.destroy
    redirect_to schools_url
    
  end

  private

    # Use callbacks to share common setup or constraints between actions.
    def set_school
      @school = school.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def school_params
      params.require(:school).permit(:name, :address, :principal, :capacity, :private_school)
    end


end
