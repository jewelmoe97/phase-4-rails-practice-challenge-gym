class ClientsController < ApplicationController

    def index
       clients = Client.all
        render json: clients
      end
    
      
      def show
        client= Client.find_by(id: params[:id])
        if client
          render json: client
        else
          render json: { error: "Client not found" }, status: :not_found
        end
      end

end
