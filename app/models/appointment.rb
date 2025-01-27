class Appointment < ApplicationRecord
  belongs_to :doctor
  belongs_to :patient

  def doctor_name
    self.doctor.name
  end

  def patient_name
    self.patient.name
  end

  def datetime_readable_format
    self.appointment_datetime.strftime("%B %d, %Y at %H:%M")      
  end

end
