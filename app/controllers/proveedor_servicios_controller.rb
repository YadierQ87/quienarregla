class ProveedorServiciosController < ApplicationController
  before_action :set_proveedor_servicio, only: [:show, :edit, :update, :destroy]

  # GET /proveedor_servicios
  # GET /proveedor_servicios.json
  def index
    @proveedor_servicios = ProveedorServicio.all
  end

  # GET /proveedor_servicios/1
  # GET /proveedor_servicios/1.json
  def show
  end

  # GET /proveedor_servicios/new
  def new
    @proveedor_servicio = ProveedorServicio.new
  end

  # GET /proveedor_servicios/1/edit
  def edit
  end

  # POST /proveedor_servicios
  # POST /proveedor_servicios.json
  def create
    @proveedor_servicio = ProveedorServicio.new(proveedor_servicio_params)

    respond_to do |format|
      if @proveedor_servicio.save
        format.html { redirect_to @proveedor_servicio, notice: 'Proveedor servicio was successfully created.' }
        format.json { render :show, status: :created, location: @proveedor_servicio }
      else
        format.html { render :new }
        format.json { render json: @proveedor_servicio.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /proveedor_servicios/1
  # PATCH/PUT /proveedor_servicios/1.json
  def update
    respond_to do |format|
      if @proveedor_servicio.update(proveedor_servicio_params)
        format.html { redirect_to @proveedor_servicio, notice: 'Proveedor servicio was successfully updated.' }
        format.json { render :show, status: :ok, location: @proveedor_servicio }
      else
        format.html { render :edit }
        format.json { render json: @proveedor_servicio.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /proveedor_servicios/1
  # DELETE /proveedor_servicios/1.json
  def destroy
    @proveedor_servicio.destroy
    respond_to do |format|
      format.html { redirect_to proveedor_servicios_url, notice: 'Proveedor servicio was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_proveedor_servicio
      @proveedor_servicio = ProveedorServicio.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def proveedor_servicio_params
      params.require(:proveedor_servicio).permit(:nombre, :telf_contacto, :celular, :direccion, :localidad, :references, :precio_min, :precio_standard, :precio_max, :garantia, :tiempo_garantia_dias, :servicio_domicilio, :experiencia, :evaluacion, :etiquetas_busqueda, :detalles, :estado_activo, :valido_hasta, :cuota_pagada, :float, :tipo_cliente, :categoria_id)
    end
end
