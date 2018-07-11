class Patient
  attr_accessor :name

  @@all= []

  def initialize(name)
    self.name = name
    self.class.all<<self
  end

  def new_appointment(doctor, date)
    Appointment.new(date, self, doctor)
  end

  def appointments
    Appointment.all.select {|a| a.patient==self}
  end

  def doctors
    self.appointments.collect {|a| a.doctor}
  end
end
