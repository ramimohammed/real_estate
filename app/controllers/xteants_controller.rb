class XteantsController < ApplicationController
  before_action :set_xteant, only: [:show, :edit, :update, :destroy]

  # GET /xteants
  # GET /xteants.json
  def index
    @xteants = Xteant.all
  end

  # GET /xteants/1
  # GET /xteants/1.json
  def show
  end

  # GET /xteants/new
  def new
    @xteant = current_user.build_xteant
  end

  # GET /xteants/1/edit
  def edit
  end

  # POST /xteants
  # POST /xteants.json
  def create
    @xteant = current_user.build_xteant(xteant_params)

    respond_to do |format|
      if @xteant.save
        format.html { redirect_to @xteant, notice: 'Xteant was successfully created.' }
        format.json { render :show, status: :created, location: @xteant }
      else
        format.html { render :new }
        format.json { render json: @xteant.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /xteants/1
  # PATCH/PUT /xteants/1.json
  def update
    respond_to do |format|
      if @xteant.update(xteant_params)
        format.html { redirect_to @xteant, notice: 'Xteant was successfully updated.' }
        format.json { render :show, status: :ok, location: @xteant }
      else
        format.html { render :edit }
        format.json { render json: @xteant.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /xteants/1
  # DELETE /xteants/1.json
  def destroy
    @xteant.destroy
    respond_to do |format|
      format.html { redirect_to xteants_url, notice: 'Xteant was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_xteant
      @xteant = Xteant.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def xteant_params
      params.require(:xteant).permit(:first_name, :last_name, :phone, :email, :address, :latitude, :longitude)
    end
end
