#Vijay
class AppointmentsController < ApplicationController

def show
	@appointment = Appointment.find_by(:id => params[:id])
	# @clientid = @appointment.client_id
	@allappointment = Appointment.where(:client_id => @appointment.client_id)
end

def summary
	@client = Client.find_by(:user_id => session[:login])
	# @appointment = Appointment.find_by(:id => params[:id])
	# @clientid = @appointment.client_id
	@appointment = Appointment.where(:client_id => @client.id)
end

def new
@appointment = Appointment.new
@stylist = Stylist.where(:salon_id => params[:salon_id])
@service = Service.where(:salon_id => params[:salon_id])
@client = Client.find_by(:user_id => session[:login])
end

def create
 @appointment = Appointment.new(appointment_params)
 @client = Client.find_by(:user_id => session[:login])
 @appointment.client_id = @client.id
 @salon = Salon.find_by(:user_id => params[:salon_id])
 @appointment.salon_id = @salon.id
 @salon = Salon.all
 @appointment.save
 redirect_to appointments_summary_path
end

def index
  @user = User.find_by(:id => session[:login])
  @salon = Salon.all
  @appointment = Appointment.new()
  #redirect_to @new_appointment(@appointment)
end

def edit
@appointment = Appointment.find_by(:id => params[:id])
@stylist = Stylist.find_by(:id => @appointment.stylist_id)
@service = Service.find_by(:id => @appointment.service_id)
@client = Client.find_by(:user_id => session[:login])
@salon = Salon.find_by(:id => @appointment.salon_id )
end

def update
 @appointment = Appointment.find_by(params[:id])
   if @appointment.update(params[:appointment].permit(:salon_id, :stylist_id, :service_id, :date, :time, :client_id))
   	@appointment.save
     redirect_to appointments_summary_path
   else
     render 'edit'
   end
end

def destroy
 @appointment = Appointment.find(params[:id])
 @appointment.destroy
 redirect_to appointments_summary_path
end

private
 def appointment_params
   params.require(:appointment).permit(:salon_id, :stylist_id, :service_id, :date, :time, :client_id)
 end
end