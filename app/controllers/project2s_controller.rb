class Project2sController < ApplicationController
  before_action :set_project2, only: %i[ show edit update destroy ]

  # GET /project2s or /project2s.json
  def index
    @project2s = Project2.all
  end

  # GET /project2s/1 or /project2s/1.json
  def show
  end

  # GET /project2s/new
  def new
    @project2 = Project2.new
  end

  # GET /project2s/1/edit
  def edit
  end

  # POST /project2s or /project2s.json
  def create
    @project2 = Project2.new(project2_params)

    respond_to do |format|
      if @project2.save
        format.html { redirect_to project2_url(@project2), notice: "Project2 was successfully created." }
        format.json { render :show, status: :created, location: @project2 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @project2.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /project2s/1 or /project2s/1.json
  def update
    respond_to do |format|
      if @project2.update(project2_params)
        format.html { redirect_to project2_url(@project2), notice: "Project2 was successfully updated." }
        format.json { render :show, status: :ok, location: @project2 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @project2.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /project2s/1 or /project2s/1.json
  def destroy
    @project2.destroy

    respond_to do |format|
      format.html { redirect_to project2s_url, notice: "Project2 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project2
      @project2 = Project2.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def project2_params
      params.require(:project2).permit(:title, :body, :description, :slug)
    end
end
