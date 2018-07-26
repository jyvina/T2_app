class ProgramsController < ApplicationController
    
    def new
        @program=Program.new
    end
    
    def show
        @program=Program.find(params[:id])
        @training=Training.all
    end
    
    
    
    def create
         @client = Client.find(params[:client_id])
         @client.programs.create(program_params)
         redirect_to client_path(@client)
    end 
    
    
     
     def destroy
         @program = Program.find(params[:id])
         @Program.destroy
         redirect_to  client_path(@program.client)
     end
     
     
    def edit
        @program = Program.find(params[:id])
    end
    
    def update
        @program = Program.find(params[:id])
        if @program.update(program_params)
            redirect_to program_path(@program)
        else
            render 'edit'
        end
    end
 
    private
     def program_params
          params.require(:program).permit(:title, :purpose, :goal, :quantification, :deadline, :contents, :supplement)
      
     end
     
end
