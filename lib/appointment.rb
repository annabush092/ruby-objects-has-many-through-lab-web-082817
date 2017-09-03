class Appointment

  attr_accessor :doctor, :patient

  def initialize(date_string, doctor_instance)
    @doctor = doctor_instance
    #@patient
    @date = date_string

    #tell doctor that the appointment has been created, if they don't know yet
    doctor_instance.appointments<<self unless doctor_instance.appointments.include?(self)
  end
end
