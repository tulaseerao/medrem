class MednamesController < ApplicationController
  before_action :set_medname, only: [:show, :edit, :update, :destroy]

  # GET /mednames
  # GET /mednames.json
  def index
    @mednames = Medname.all
  end

  # GET /mednames/1
  # GET /mednames/1.json
  def show
  end

  # GET /mednames/new
  def new
    @medname = Medname.new
  end

  # GET /mednames/1/edit
  def edit
  end

  # POST /mednames
  # POST /mednames.json
  def create
    @medname = Medname.new(medname_params)

    respond_to do |format|
      if @medname.save
        format.html { redirect_to @medname, notice: 'Medname was successfully created.' }
        format.json { render action: 'show', status: :created, location: @medname }
      else
        format.html { render action: 'new' }
        format.json { render json: @medname.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mednames/1
  # PATCH/PUT /mednames/1.json
  def update
    respond_to do |format|
      if @medname.update(medname_params)
        format.html { redirect_to @medname, notice: 'Medname was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @medname.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mednames/1
  # DELETE /mednames/1.json
  def destroy
    @medname.destroy
    respond_to do |format|
      format.html { redirect_to mednames_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_medname
      @medname = Medname.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def medname_params
      params.require(:medname).permit(:name, :strength, :form, :purpose)
    end
end
