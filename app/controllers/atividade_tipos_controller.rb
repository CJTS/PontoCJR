class AtividadeTiposController < ApplicationController
  before_action :set_atividade_tipo, only: [:show, :edit, :update, :destroy]

  # GET /atividade_tipos
  # GET /atividade_tipos.json
  def index
    @atividade_tipos = AtividadeTipo.all
  end

  # GET /atividade_tipos/1
  # GET /atividade_tipos/1.json
  def show
  end

  # GET /atividade_tipos/new
  def new
    @atividade_tipo = AtividadeTipo.new
  end

  # GET /atividade_tipos/1/edit
  def edit
  end

  # POST /atividade_tipos
  # POST /atividade_tipos.json
  def create
    @atividade_tipo = AtividadeTipo.new(atividade_tipo_params)

    respond_to do |format|
      if @atividade_tipo.save
        format.html { redirect_to @atividade_tipo, notice: 'Atividade tipo was successfully created.' }
        format.json { render :show, status: :created, location: @atividade_tipo }
      else
        format.html { render :new }
        format.json { render json: @atividade_tipo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /atividade_tipos/1
  # PATCH/PUT /atividade_tipos/1.json
  def update
    respond_to do |format|
      if @atividade_tipo.update(atividade_tipo_params)
        format.html { redirect_to @atividade_tipo, notice: 'Atividade tipo was successfully updated.' }
        format.json { render :show, status: :ok, location: @atividade_tipo }
      else
        format.html { render :edit }
        format.json { render json: @atividade_tipo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /atividade_tipos/1
  # DELETE /atividade_tipos/1.json
  def destroy
    @atividade_tipo.destroy
    respond_to do |format|
      format.html { redirect_to atividade_tipos_url, notice: 'Atividade tipo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_atividade_tipo
      @atividade_tipo = AtividadeTipo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def atividade_tipo_params
      params.require(:atividade_tipo).permit(:tipo)
    end
end
