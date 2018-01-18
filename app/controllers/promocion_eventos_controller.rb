class PromocionEventosController < ApplicationController
  before_action :set_promocion_evento, only: [:show, :edit, :update, :destroy]

  # GET /promocion_eventos
  # GET /promocion_eventos.json
  def index
    @promocion_eventos = PromocionEvento.all
  end

  # GET /promocion_eventos/1
  # GET /promocion_eventos/1.json
  def show
  end

  # GET /promocion_eventos/new
  def new
    @promocion_evento = PromocionEvento.new
  end

  # GET /promocion_eventos/1/edit
  def edit
  end

  # POST /promocion_eventos
  # POST /promocion_eventos.json
  def create
    @promocion_evento = PromocionEvento.new(promocion_evento_params)

    respond_to do |format|
      if @promocion_evento.save
        format.html { redirect_to @promocion_evento, notice: 'Promocion evento was successfully created.' }
        format.json { render :show, status: :created, location: @promocion_evento }
      else
        format.html { render :new }
        format.json { render json: @promocion_evento.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /promocion_eventos/1
  # PATCH/PUT /promocion_eventos/1.json
  def update
    respond_to do |format|
      if @promocion_evento.update(promocion_evento_params)
        format.html { redirect_to @promocion_evento, notice: 'Promocion evento was successfully updated.' }
        format.json { render :show, status: :ok, location: @promocion_evento }
      else
        format.html { render :edit }
        format.json { render json: @promocion_evento.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /promocion_eventos/1
  # DELETE /promocion_eventos/1.json
  def destroy
    @promocion_evento.destroy
    respond_to do |format|
      format.html { redirect_to promocion_eventos_url, notice: 'Promocion evento was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_promocion_evento
      @promocion_evento = PromocionEvento.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def promocion_evento_params
      params.require(:promocion_evento).permit(:nombre, :fecha, :descripcion, :periodo_publicacion, :cliente_id, :costo)
    end
end
