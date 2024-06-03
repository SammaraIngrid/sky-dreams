class ClientsController < ApplicationController
  def index
    @clients = Client.all.order(created_at: :desc)
  end

  def show
    @client = Client.find(params[:id])
  end

  def new
    @client = Client.new
  end

  def create
    @client = Client.new(client_params)

    if @client.save
      redirect_to(clients_path, notice: 'Criado com sucesso')
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @client = Client.find(params[:id])

    if @client.destroy
      redirect_to(clients_path, notice: 'Excluído com sucesso')
    else
      redirect_to(clients_path, notice: 'Não foi possível excluir')
    end
  end

  private

  def client_params
    params.require(:client).permit(:name, :email, :document, :phone, :birth_date, :gender, :passport, :nationality)
  end
end
