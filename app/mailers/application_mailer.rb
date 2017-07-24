class ApplicationMailer < ActionMailer::Base
  default from: 'from@example.com'
  layout 'mailer'
  private
  def add_inline_attachment!
    attachments.inline['textlogo.png'] = File.read(File.join(Rails.root,'app','assets','images','textlogo.png'))
  end
end
