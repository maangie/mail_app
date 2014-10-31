require 'rails_helper'

CLIENT_INFO = <<EOT
SERVER_NAME          localhost
PATH_INFO            /mails/transmit
REMOTE_HOST          127.0.0.1
HTTP_ACCEPT_ENCODING gzip, deflate
HTTP_USER_AGENT      Mozilla/5.0 (X11; Ubuntu; Linux x86_64;)
SERVER_PROTOCOL      HTTP/1.1
HTTP_CACHE_CONTROL      
HTTP_ACCEPT_LANGUAGE ja,en-us
HTTP_HOST            localhost:3000
REMOTE_ADDR          127.0.0.1
SERVER_SOFTWARE      WEBrick/1.3.1 (Ruby/2.1.3)
HTTP_KEEP_ALIVE 
HTTP_REFERER         http://localhost/
HTTP_ACCEPT_CHARSET     
REQUEST_URI          http://localhost/mails/transmit
SERVER_PORT          80
GATEWAY_INTERFACE    CGI/1.1
QUERY_STRING    
REMOTE_USER     
HTTP_ACCEPT          text/html, application/xhtml+xml, application/xml
REQUEST_METHOD       GET
HTTP_CONNECTION      keep-alive
EOT

RSpec.describe NoticeMailer, type: :mailer do
  describe 'sendmail_confirm' do
    let(:mail) { NoticeMailer.sendmail_confirm CLIENT_INFO }

    it 'renders the headers' do
      expect(mail.subject).to eq('Sendmail confirm')
      expect(mail.to).to eq(['to@example.org'])
      expect(mail.from).to eq(['from@example.com'])
    end

    it 'renders the body' do
      expect(mail.body.encoded).to match('Hi')
    end
  end

end
