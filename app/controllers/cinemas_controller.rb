class CinemasController < ApplicationController   
  def index   
     @cinemas = Cinema.all   
  end   
     
  def new   
     @cinema = Cinema.new   
  end   
     
  def create   
     @cinema = Cinema.new(cinema_params)   
       respond_to do|format| 
     if @cinema.save 
      format.html { redirect_to cinemas_path, notice: 'Cinema was Successfully uploaded.'}  
      format.json { render :show, status: :created, location: @cinema}
         
     else   
        format.html {render :new } 
        format.json { render json: @cinema.errors, status: :unprocessable_entity }
     end   
    end  
  end   
     
  def destroy   
     @cinema = Cinema.find(params[:id])   
     @cinema.destroy   
     redirect_to cinemas_path, notice:  "Successfully deleted."   
  end   
     
  private   
     def cinema_params   
     params.require(:cinema).permit(:title, :category, :year, :price, :attachment)   
  end   
     
end  