class StylistsController < ApplicationController

def index
	@stylists = @Stylist.all
	#@stylist = @Salon.find_by(params[:salon_id])
end

def new
  @stylist = Stylist.new
  @salon = Salon.find_by(params[:id])
end

def create
    @salon = Salon.find(params[:salon_id])
    @stylist = @salon.stylists.create(params[:stylist].permit(:first_name, :last_name, :user_id, :sex, :phone, :email, :date_of_birth, :image_url))
    #redirect_to salon_path(@salon)
    # @stylist = Stylist.new(stylist_params) 
    # @stylist.salon_id = session[:login]
    # @salon = Salon.find_by(:id => 'user_id')
    # @stylist.save
    # redirect_to salon_path(@salon)
end

def edit
	@stylist = Stylist.find(params[:id])
end

def show
	@stylist = Stylist.find_by(:id => params[:id])
  @salon = Salon.find_by(:id => params[:salon_id])
end

def update
	@stylist = Stylist.find(params[:id])
   if @stylist.update(params[:stylist].permit(:first_name, :last_name, :user_id, :sex, :phone, :email, :date_of_birth, :image_url))
     redirect_to salon_path(@salon)
   else
     render 'edit'
   end
end

def destroy
	@stylist = Stylist.find(params[:id])
  @stylist.destroy
  redirect_to @salons
end 

private
  def stylist_params
     params.require(:stylist).permit(:first_name, :last_name, :user_id, :sex, :phone, :email, :date_of_birth, :image_url)
  end
end