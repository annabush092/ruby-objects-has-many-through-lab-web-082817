class Patient
  
  attr_reader :name
  attr_accessor :doctors, :appointments

  def initialize(name)
    @name = name
    @appointments = []
    @doctors = []
  end

  def add_appointment(appointment_instance)
    #tell the appointment who the patient is
    appointment_instance.patient = self
    #tell the patient who the doctor is
    self.doctors << appointment_instance.doctor
    #add the appointment instance to the patient's array
    self.appointments << appointment_instance
  end
end
