class VlansController < ApplicationController
  before_action :set_vlan, only: [:show, :edit, :update, :destroy]

  # GET /vlans
  # GET /vlans.json
  def index
    @vlans = Vlan.page(params[:page])
  end

  # GET /vlans/1
  # GET /vlans/1.json
  def show
    p Vlan.column_names
  end

  # GET /vlans/new
  def new
    @vlan = Vlan.new
  end

  # GET /vlans/1/edit
  def edit
  end

  # POST /vlans
  # POST /vlans.json
  def create
    @vlan = Vlan.new(vlan_params)

    respond_to do |format|
      if @vlan.save
        format.html { redirect_to @vlan, notice: 'Vlan was successfully created.' }
        format.json { render :show, status: :created, location: @vlan }
      else
        format.html { render :new }
        format.json { render json: @vlan.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vlans/1
  # PATCH/PUT /vlans/1.json
  def update
    respond_to do |format|
      if @vlan.update(vlan_params)
        format.html { redirect_to @vlan, notice: 'Vlan was successfully updated.' }
        format.json { render :show, status: :ok, location: @vlan }
      else
        format.html { render :edit }
        format.json { render json: @vlan.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vlans/1
  # DELETE /vlans/1.json
  def destroy
    @vlan.destroy
    respond_to do |format|
      format.html { redirect_to vlans_url, notice: 'Vlan was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vlan
      @vlan = Vlan.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def vlan_params
      params.require(:vlan).permit(:description)
    end
end
