class PcInfosController < ApplicationController
  before_action :set_pc_info, only: [:show, :edit, :update, :destroy]

  # GET /pc_infos
  # GET /pc_infos.json
  def index
    @pc_infos = PcInfo.all
  end

  # GET /pc_infos/1
  # GET /pc_infos/1.json
  def show
  end

  # GET /pc_infos/new
  def new
    @pc_info = PcInfo.new
  end

  # GET /pc_infos/1/edit
  def edit
  end

  # POST /pc_infos
  # POST /pc_infos.json
  def create
    @pc_info = PcInfo.new(pc_info_params)

    respond_to do |format|
      if @pc_info.save
        format.html { redirect_to @pc_info, notice: 'Pc info was successfully created.' }
        format.json { render :show, status: :created, location: @pc_info }
      else
        format.html { render :new }
        format.json { render json: @pc_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pc_infos/1
  # PATCH/PUT /pc_infos/1.json
  def update
    respond_to do |format|
      if @pc_info.update(pc_info_params)
        format.html { redirect_to @pc_info, notice: 'Pc info was successfully updated.' }
        format.json { render :show, status: :ok, location: @pc_info }
      else
        format.html { render :edit }
        format.json { render json: @pc_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pc_infos/1
  # DELETE /pc_infos/1.json
  def destroy
    @pc_info.destroy
    respond_to do |format|
      format.html { redirect_to pc_infos_url, notice: 'Pc info was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pc_info
      @pc_info = PcInfo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pc_info_params
      params.require(:pc_info).permit(:title, :description, :picture, :url)
    end
end
