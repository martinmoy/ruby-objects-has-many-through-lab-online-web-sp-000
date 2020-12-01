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
    Appointment.map {|name|
    name.patient}
  end


end
