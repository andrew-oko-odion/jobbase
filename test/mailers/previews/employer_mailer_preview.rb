# Preview all emails at http://localhost:3000/rails/mailers/employer_mailer
class EmployerMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/employer_mailer/payment_invoice
  def payment_invoice
    EmployerMailer.payment_invoice
  end

end
