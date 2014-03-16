#Vijay
class AppointmentsController < ApplicationController

def show
end

def new
@appointment = Appointment.new
@stylist = Stylist.where(:salon_id => params[:salon_id])
@service = Service.where(:salon_id => params[:salon_id])
end

def create
 @appointment = Appointment.new(appointment_params)
 @client = Client.find_by(:user_id => session[:login])
 @appointment.client_id = @client.id
  @salon = Salon.all
 redirect_to @appointment_path
end

def index
  @user = User.find_by(:id => session[:login])
  @salon = Salon.all
  @appointment = Appointment.new()
  #redirect_to @new_appointment(@appointment)
end

def edit
 @client = Client.find(params[:id])
end

def update
 @client = Client.find(params[:id])
 if @client.update(params[:client].permit(:client_name, :owner_name, :contact_name, :phone, :address, :email))
  redirect_to @client
 else
  render 'edit'
 end
end

def destroy
 @client = Client.find(params[:id])
 @client.destroy
 redirect_to "/clients"
end

private
 def appointment_params
   params.require(:appointment).permit(:salon_id, :stylist_id, :service_id, :date, :time)
 end
end