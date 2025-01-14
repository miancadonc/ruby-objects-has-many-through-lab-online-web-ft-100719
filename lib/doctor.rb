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
    self.appointments.collect{|appointment| appointment.patient}.uniq
  end
  
  def self.all
    @@all
  end
  
end