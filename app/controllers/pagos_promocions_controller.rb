class PagosPromocionsController < ApplicationController
  before_action :set_pagos_promocion, only: [:show, :edit, :update, :destroy]

  # GET /pagos_promocions
  # GET /pagos_promocions.json
  def index
    @pagos_promocions = PagosPromocion.all
  end

  # GET /pagos_promocions/1
  # GET /pagos_promocions/1.json
  def show
  end

  # GET /pagos_promocions/new
  def new
    @pagos_promocion = PagosPromocion.new
  end

  # GET /pagos_promocions/1/edit
  def edit
  end

  # POST /pagos_promocions
  # POST /pagos_promocions.json
  def create
    @pagos_promocion = PagosPromocion.new(pagos_promocion_params)

    respond_to do |format|
      if @pagos_promocion.save
        format.html { redirect_to @pagos_promocion, notice: 'Pagos promocion was successfully created.' }
        format.json { render :show, status: :created, location: @pagos_promocion }
      else
        format.html { render :new }
        format.json { render json: @pagos_promocion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pagos_promocions/1
  # PATCH/PUT /pagos_promocions/1.json
  def update
    respond_to do |format|
      if @pagos_promocion.update(pagos_promocion_params)
        format.html { redirect_to @pagos_promocion, notice: 'Pagos promocion was successfully updated.' }
        format.json { render :show, status: :ok, location: @pagos_promocion }
      else
        format.html { render :edit }
        format.json { render json: @pagos_promocion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pagos_promocions/1
  # DELETE /pagos_promocions/1.json
  def destroy
    @pagos_promocion.destroy
    respond_to do |format|
      format.html { redirect_to pagos_promocions_url, notice: 'Pagos promocion was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pagos_promocion
      @pagos_promocion = PagosPromocion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pagos_promocion_params
      params.require(:pagos_promocion).permit(:cliente_id, :publicidad_id)
    end
end
