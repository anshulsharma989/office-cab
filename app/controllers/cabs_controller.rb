class CabsController < ApplicationController
  before_action :set_cab, only: [:show, :edit, :update, :destroy]

  # GET /cabs
  # GET /cabs.json
  def index
    @cabs = Cab.all
    respond_to do |format|
      format.html { @cabs }
      format.json { render json: @cabs}
    end
  end

  # GET /cabs/1
  # GET /cabs/1.json
  def show
  end

  # GET /cabs/new
  def new
    @cab = Cab.new
  end

  # GET /cabs/1/edit
  def edit
  end

  # POST /cabs
  # POST /cabs.json
  def create
    @cab = Cab.new(cab_params)

    respond_to do |format|
      if @cab.save
        format.html { redirect_to @cab, notice: 'Cab was successfully created.' }
        format.json { render :show, status: :created, location: @cab }
      else
        format.html { render :new }
        format.json { render json: @cab.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cabs/1
  # PATCH/PUT /cabs/1.json
  def update
    respond_to do |format|
      if @cab.update(cab_params)
        format.html { redirect_to @cab, notice: 'Cab was successfully updated.' }
        format.json { render :show, status: :ok, location: @cab }
      else
        format.html { render :edit }
        format.json { render json: @cab.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cabs/1
  # DELETE /cabs/1.json
  def destroy
    @cab.destroy
    respond_to do |format|
      format.html { redirect_to cabs_url, notice: 'Cab was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cab
      @cab = Cab.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cab_params
      params.require(:cab).permit(:car_id, :driver_id, :location)
    end
end
