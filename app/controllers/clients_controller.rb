class ClientsController < ApplicationController
  def index
    @clients = Client.all.order(created_at: :desc)
  end

  def destroy
    @client = Client.find(params[:id])

    if @client.destroy
      redirect_to(clients_path, notice: 'Excluído com sucesso')
    else
      redirect_to(clients_path, notice: 'Não foi possível excluir')
    end
  end
end
