class AppointmentMailer < ActionMailer::Base
  default from: "from@example.com"
  def created_appointment_email(appointment)
    @appointment = appointment
    @url  = 'http://example.com/login'
    mail(to: @appointment.email, subject: 'Welcome to My Awesome Site')
  end
end
