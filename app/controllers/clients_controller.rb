class ClientsController < ApplicationController
    
    def new
        @client=Client.new
    end
    
    def create
        @client=Client.new(client_params)
        if @client.save
            redirect_to clients_path
        else
            render 'new'
        end
        
    end
    
    def show
        @client=Client.find(params[:id])
    end
    
    def index
        @client=Client.all
    end
    
    private
     def client_params
         params.require(:client).permit(:name,:birth,:address,:email,:category,:comment)
     end
end
