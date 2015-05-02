class UsuarioTiposController < ApplicationController
  before_action :set_usuario_tipo, only: [:show, :edit, :update, :destroy]

  # GET /usuario_tipos
  # GET /usuario_tipos.json
  def index
    @usuario_tipos = UsuarioTipo.all
  end

  # GET /usuario_tipos/1
  # GET /usuario_tipos/1.json
  def show
  end

  # GET /usuario_tipos/new
  def new
    @usuario_tipo = UsuarioTipo.new
  end

  # GET /usuario_tipos/1/edit
  def edit
  end

  # POST /usuario_tipos
  # POST /usuario_tipos.json
  def create
    @usuario_tipo = UsuarioTipo.new(usuario_tipo_params)

    respond_to do |format|
      if @usuario_tipo.save
        format.html { redirect_to @usuario_tipo, notice: 'Usuario tipo was successfully created.' }
        format.json { render :show, status: :created, location: @usuario_tipo }
      else
        format.html { render :new }
        format.json { render json: @usuario_tipo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /usuario_tipos/1
  # PATCH/PUT /usuario_tipos/1.json
  def update
    respond_to do |format|
      if @usuario_tipo.update(usuario_tipo_params)
        format.html { redirect_to @usuario_tipo, notice: 'Usuario tipo was successfully updated.' }
        format.json { render :show, status: :ok, location: @usuario_tipo }
      else
        format.html { render :edit }
        format.json { render json: @usuario_tipo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /usuario_tipos/1
  # DELETE /usuario_tipos/1.json
  def destroy
    @usuario_tipo.destroy
    respond_to do |format|
      format.html { redirect_to usuario_tipos_url, notice: 'Usuario tipo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_usuario_tipo
      @usuario_tipo = UsuarioTipo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def usuario_tipo_params
      params.require(:usuario_tipo).permit(:usuario)
    end
end
