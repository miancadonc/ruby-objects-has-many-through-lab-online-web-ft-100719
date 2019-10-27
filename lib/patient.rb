class Patient
  attr_accessor :name
  @@all = []
  
  def intialize(name)
    @name = name
  end
  
  def new_appoinment(doctor, date)
    Appointment.new()
  end
  
end