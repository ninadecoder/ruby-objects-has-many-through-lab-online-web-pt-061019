require 'pry'

class Doctor
  
  attr_accessor :name
  @@all = []
  
  def initialize(name)
    @name = name
    @appointments = []
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def appointments
    Appointment.all.select {|appointments| appointments.doctor == self}
  end
  
  def new_appointment(patient, date)
    Appointment.new (patient,date,self)
  end
  
  def patients
    # binding.pry
     self.appointments.collect {|appointment| appointment.patient }
  end
  
end