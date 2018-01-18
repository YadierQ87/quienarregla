class PagosPublicidadsController < ApplicationController
  before_action :set_pagos_publicidad, only: [:show, :edit, :update, :destroy]

  # GET /pagos_publicidads
  # GET /pagos_publicidads.json
  def index
    @pagos_publicidads = PagosPublicidad.all
  end

  # GET /pagos_publicidads/1
  # GET /pagos_publicidads/1.json
  def show
  end

  # GET /pagos_publicidads/new
  def new
    @pagos_publicidad = PagosPublicidad.new
  end

  # GET /pagos_publicidads/1/edit
  def edit
  end

  # POST /pagos_publicidads
  # POST /pagos_publicidads.json
  def create
    @pagos_publicidad = PagosPublicidad.new(pagos_publicidad_params)

    respond_to do |format|
      if @pagos_publicidad.save
        format.html { redirect_to @pagos_publicidad, notice: 'Pagos publicidad was successfully created.' }
        format.json { render :show, status: :created, location: @pagos_publicidad }
      else
        format.html { render :new }
        format.json { render json: @pagos_publicidad.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pagos_publicidads/1
  # PATCH/PUT /pagos_publicidads/1.json
  def update
    respond_to do |format|
      if @pagos_publicidad.update(pagos_publicidad_params)
        format.html { redirect_to @pagos_publicidad, notice: 'Pagos publicidad was successfully updated.' }
        format.json { render :show, status: :ok, location: @pagos_publicidad }
      else
        format.html { render :edit }
        format.json { render json: @pagos_publicidad.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pagos_publicidads/1
  # DELETE /pagos_publicidads/1.json
  def destroy
    @pagos_publicidad.destroy
    respond_to do |format|
      format.html { redirect_to pagos_publicidads_url, notice: 'Pagos publicidad was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pagos_publicidad
      @pagos_publicidad = PagosPublicidad.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pagos_publicidad_params
      params.require(:pagos_publicidad).permit(:cliente_id, :promocionEventos_id)
    end
end
