class TrainingsController < ApplicationController
    
    def new
        @training=Training.new
    end
    
    def show
        @training=Training.find(params[:id])
    end
    
    
    
    def create
         @program = Program.find(params[:program_id])
         @program.training.create(training_params)
         redirect_to program_path(@program)
    end 
    
    
     
     
 
    private
     def training_params
          params.require(:training).permit(:event, :quantification, :date, :time, :user,  :comments)
      
     end
end



