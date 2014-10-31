class NoticeMailer < ActionMailer::Base
  default from: 'from@example.com'

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notice_mailer.sendmail_confirm.subject
  #
  def sendmail_confirm(client_info)
    @client_info = client_info
    @greeting = 'Hi'

    mail to: Rails.application.secrets.user_name
  end
end
