
    class Doctor
        attr_accessor :name, :patient, :appointment
        @@all=[]
        def initialize(name)
            @name=name
            @@all<<self
        end
        def appointments
            Appointment.all.select {|appointment| appointment.doctor==self}
        end
        def new_appointment(patient,date)
            new_appointment=Appointment.new(date,patient,self)
        end
        def patients
            Appointment.all.map {|appointment| appointment.patient if appointment.doctor==self}
        end

        def self.all
            @@all
        end













    end
    