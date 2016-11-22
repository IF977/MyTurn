class FornecedorController < ApplicationController
 before_action :set_fornecedor, only: [:show]

  def index
    @fornecedor = Fornecedor.all
  end

  def show
    @fornecedor = Fornecedor.all
  end

  def new
    
  end

  def edit
  end

  def create
  end
  def destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fornecedor
      @fornecedor = Fornecedor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fornecedor_params
      params.require(:fornecedor).permit(:razaosocial, :CNPJ)
    end
end

