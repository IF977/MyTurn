class AgendamentosController < ApplicationController
  before_action :set_agendamento, only: [:show, :edit, :update, :destroy]

  # GET /agendamentos
  # GET /agendamentos.json
  def index
    @agendamentos = current_user.agendamentos.all
  end

  # GET /agendamentos/1
  # GET /agendamentos/1.json
  def show
  end

  # GET /agendamentos/new
  def new
    @agendamento = Agendamento.new
    @user = current_user
    
  end

  # GET /agendamentos/1/edit
  def edit
    
  end

  # POST /agendamentos
  # POST /agendamentos.json
  def create
    @agendamento = current_user.agendamentos.build(agendamento_params)
    
    respond_to do |format|
      if @agendamento.save
        format.html { redirect_to @agendamento, notice: 'Agendamento foi criado com sucesso.' }
        format.json { render :show, status: :created, location: @agendamento }
      else
        format.html { render :new }
        format.json { render json: @agendamento.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /agendamentos/1
  # PATCH/PUT /agendamentos/1.json
  def update
    respond_to do |format|
      if @agendamento.update(agendamento_params)
        format.html { redirect_to @agendamento, notice: 'Agendamento foi atualizado com sucesso.' }
        format.json { render :show, status: :ok, location: @agendamento }
      else
        format.html { render :edit }
        format.json { render json: @agendamento.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /agendamentos/1
  # DELETE /agendamentos/1.json
  def destroy
    @agendamento.destroy
    respond_to do |format|
      format.html { redirect_to agendamentos_url, notice: 'Agendamento foi deletado com sucesso.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_agendamento
      @agendamento = Agendamento.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def agendamento_params
      params.require(:agendamento).permit(:user_id, :Qtd_Trabalhadores, :Data, :TempoEntrega, :Paletizacao, :ID_TipoArmazenamento, :ID_Fornecedor)
    end
end
