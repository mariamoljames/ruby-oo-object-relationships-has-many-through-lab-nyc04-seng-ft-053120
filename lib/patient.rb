class Patient
    attr_accessor :name, :appointment, :doctor
    @@all=[]
    def initialize(name)
        @name=name
        @@all<<self
    end
    def appointments
        Appointment.all.select {|appointment| appointment.patient==self}
    end
    def new_appointment(doctor,date)
        new_appointment=Appointment.new(date,self,doctor)
    end
    def doctors
        Appointment.all.map {|appointment| appointment.doctor if appointment.patient==self}
    end
    def self.all
        @@all
    end









end
