class Doctor 
  attr_accessor :name
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def appointments
    Appointment.all.select {|a| a.doctor == self}
  end
  
  def patients
    appointments.map(&:patient)
  end
  
  def new_appointment(name, genre)
    #Appointment.new(name, self, genre)
  end
end 