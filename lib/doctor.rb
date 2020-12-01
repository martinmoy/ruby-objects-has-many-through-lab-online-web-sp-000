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
    Appointment.select {|name|
    name.doctor == self}
  end

  def patients
    Appointment.collect {|name|
    name.patient}
  end

  def new_appointment(date, doctor)
   Appointment.new(date, self, doctor)
 end


end
