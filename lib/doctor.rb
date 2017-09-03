class Doctor

  attr_reader :name
  attr_accessor :appointments, :patients

  def initialize(name)
    @name = name
    @appointments = []
    @patients = []
  end

  def add_appointment(appointment_instance)
    #tell the appointment who the doctor is
    appointment_instance.doctor = self
    #add the patient of the appointment to the doctor's array
    self.patients << appointment_instance.patient
    #add the appointment instance to the doctor's array
    self.appointments << appointment_instance
  end

end
