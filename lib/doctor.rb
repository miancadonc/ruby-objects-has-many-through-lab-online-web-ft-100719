class Doctor
  attr_accessor :name
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def appointments
    Appointment.all.select{|appointment| appointment.doctor}
  end
  
  def new_appointment(patient, date)
    Appointment.new(date, patient, self)
  end
  
  def patients
    Patient.all.select{|patient| patient.doctor}
  end
  
  def self.all
    @@all
  end
  
end