class TrainingsController < ApplicationController
    
    
    
    def create
         @client = Client.find(params[:client_id])
         @client.trainings.create(training_params)
        redirect_to client_path(@client)
    end 
    
    
     
     def destroy
        @client = Client.find(params[:client_id])
        @training = @client.trainings.find(params[:id])
        @training.destroy
        redirect_to client_path(@client)
     end
     
     def edit
        @client = Client.find(params[:clientid])
        
     end
    
    def update
        @training = @client.training.find(params[:id])
        if @training.update(training_params)
            redirect_to client_path(@client)
        else
            render 'edit'
        end
    end
 
    private
     def training_params
          params.require(:training).permit(:purpose, :goal, :quantification, :supplement)
      #createする時commentとその中身のbodyは許可するといいう記載
     end
end



