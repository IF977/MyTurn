class TipoarmazenamentosController < ApplicationController
  before_action :set_tipoarmazenamento, only: [:show, :edit, :update, :destroy, :new, :create]

  # GET /tipoarmazenamentos
  # GET /tipoarmazenamentos.json
  def index
    @tipoarmazenamentos = Tipoarmazenamento.all
  end

 
  def show
  end
  
  # GET /tipoarmazenamentos/new
  def new
    @tipoarmazenamento = Tipoarmazenamento.new(tipoarmazenamento_params)

    respond_to do |format|
      if @tipoarmazenamento.save
        format.html { redirect_to @tipoarmazenamento, notice: 'Tipo de armazenamento foi criado com sucesso.' }
        format.json { render :show, status: :created, location: @tipoarmazenamento }
      else
        format.html { render :new }
        format.json { render json: @tipoarmazenamento.errors, status: :unprocessable_entity }
      end
    end
  end

  # GET /tipoarmazenamentos/1/edit
  def edit
  end

  # POST /tipoarmazenamentos
  # POST /tipoarmazenamentos.json
  def create
    @tipoarmazenamento = Tipoarmazenamento.new(tipoarmazenamento_params)

    respond_to do |format|
      if @tipoarmazenamento.save
        format.html { redirect_to @tipoarmazenamento, notice: 'Tipo de armazenamento foi criado com sucesso.' }
        format.json { render :show, status: :created, location: @tipoarmazenamento }
      else
        format.html { render :new }
        format.json { render json: @tipoarmazenamento.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tipoarmazenamentos/1
  # PATCH/PUT /tipoarmazenamentos/1.json
  def update
    respond_to do |format|
      if @tipoarmazenamento.update(tipoarmazenamento_params)
        format.html { redirect_to @tipoarmazenamento, notice: 'Tipo de armazenamento foi atualizado com sucesso.' }
        format.json { render :show, status: :ok, location: @tipoarmazenamento }
      else
        format.html { render :edit }
        format.json { render json: @tipoarmazenamento.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tipoarmazenamentos/1
  # DELETE /tipoarmazenamentos/1.json
  def destroy
    @tipoarmazenamento.destroy
    respond_to do |format|
      format.html { redirect_to tipoarmazenamentos_url, notice: 'Tipoarmazenamento was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  
  private
  # Use callbacks to share common setup or constraints between actions.
  def set_tipoarmazenamento
    @tipoarmazenamento = Tipoarmazenamento.find(params[:id])
  end

    # Never trust parameters from the scary internet, only allow the white list through.
  def tipoarmazenamento_params
    params.require(:tipoarmazenamento).permit(:descricao)
  end
end
