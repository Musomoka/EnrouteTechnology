class AboutsController < ApplicationController
  before_action :set_about, only: [:show, :edit, :update]

  # GET /abouts
  # GET /abouts.json
  def index
    @abouts = About.all
  end


  def about_list
    @abouts = About.all
  end
  # GET /abouts/1
  # GET /abouts/1.json
  def show
  end

  # GET /abouts/new 
  def new
    
  end
  

  # GET /abouts/1/edit
  def edit
  end

  # POST /abouts
  # POST /abouts.json


  # PATCH/PUT /abouts/1
  # PATCH/PUT /abouts/1.json
  def update
    respond_to do |format|
      if @about.update(about_params)
        format.html { redirect_to @about, notice: 'About was successfully updated.' }
        format.json { render :show, status: :ok, location: @about }
      else
        format.html { render :edit }
        format.json { render json: @about.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /abouts/1
  # DELETE /abouts/1.json
 
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_about
      @about = About.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def about_params
      params.require(:about).permit(:description, :social, :profile_Picture)
    end
end
