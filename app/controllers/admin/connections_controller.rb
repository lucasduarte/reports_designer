class Admin::ConnectionsController < ApplicationController
  before_action :set_connection, only: [:show, :edit, :update, :destroy]

  def index
    respond_to do |format|
      format.html
      format.json { render json: ConnectionsDatatable.new(view_context)}
    end
  end

  def new
    @connection = Connection.new
  end

  def create
    @connection = Connection.new connection_params

    if @connection.save
      redirect_to @connection, notice: "Conexão cadastrada com sucesso."
    else
      render :new, notice: "Falha ao cadastrar Conexão!"
    end
  end

  def show
  end

  def edit
  end

  def update
    if @connection.update(connection_params)
      redirect_to @connection, notice: "Conexão atualizada com sucesso."
    else
      render :edit
    end
  end

  def destroy
    @connection.destroy
    redirect_to connections_url, notice: 'Conexão excluída com sucesso.'
  end

  private

  def connection_params
    params.require(:connection).permit(:name, :provider, :connection_string, :timeout)
  end

  def set_connection
    @connection = Connection.find(params[:id])
  end
end
