class PatientsController < ApplicationController
  
  def new
  	@patient = Patient.new
  	@patients = Patient.all
  end

  def confirmation
  end

  def create
  	@patient = Patient.new(patient_params)
  	if @patient.save
  		redirect_to signup_path
  	else
  		render '/signup'
  	end
  end

  private

  def patient_params
  	params.require(:patient).permit(:first_name, :last_name)
  end

end
