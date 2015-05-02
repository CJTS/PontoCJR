class DiretoriasController < ApplicationController
  before_action :set_diretoria, only: [:show, :edit, :update, :destroy]

  # GET /diretorias
  # GET /diretorias.json
  def index
    @diretorias = Diretoria.all
  end

  # GET /diretorias/1
  # GET /diretorias/1.json
  def show
  end

  # GET /diretorias/new
  def new
    @diretoria = Diretoria.new
  end

  # GET /diretorias/1/edit
  def edit
  end

  # POST /diretorias
  # POST /diretorias.json
  def create
    @diretoria = Diretoria.new(diretoria_params)

    respond_to do |format|
      if @diretoria.save
        format.html { redirect_to @diretoria, notice: 'Diretoria was successfully created.' }
        format.json { render :show, status: :created, location: @diretoria }
      else
        format.html { render :new }
        format.json { render json: @diretoria.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /diretorias/1
  # PATCH/PUT /diretorias/1.json
  def update
    respond_to do |format|
      if @diretoria.update(diretoria_params)
        format.html { redirect_to @diretoria, notice: 'Diretoria was successfully updated.' }
        format.json { render :show, status: :ok, location: @diretoria }
      else
        format.html { render :edit }
        format.json { render json: @diretoria.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /diretorias/1
  # DELETE /diretorias/1.json
  def destroy
    @diretoria.destroy
    respond_to do |format|
      format.html { redirect_to diretorias_url, notice: 'Diretoria was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_diretoria
      @diretoria = Diretoria.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def diretoria_params
      params.require(:diretoria).permit(:sigla_diretoria, :nome_diretoria)
    end
end
