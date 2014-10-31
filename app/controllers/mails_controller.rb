# -*- coding: utf-8 -*-
# メイルを扱うコントローラ
class MailsController < ApplicationController
  CLIENT_INFO = %w(SERVER_NAME
                   PATH_INFO
                   REMOTE_HOST
                   HTTP_ACCEPT_ENCODING
                   HTTP_USER_AGENT
                   SERVER_PROTOCOL
                   HTTP_CACHE_CONTROL
                   HTTP_ACCEPT_LANGUAGE
                   HTTP_HOST
                   REMOTE_ADDR
                   SERVER_SOFTWARE
                   HTTP_KEEP_ALIVE
                   HTTP_REFERER
                   HTTP_ACCEPT_CHARSET
                   REQUEST_URI
                   SERVER_PORT
                   GATEWAY_INTERFACE
                   QUERY_STRING
                   REMOTE_USER
                   HTTP_ACCEPT
                   REQUEST_METHOD
                   HTTP_CONNECTION)

  def index
  end

  def transmit
    client_info = ''
    CLIENT_INFO.map do |s|
      client_info << "#{s}\t#{env[s]}\n"
    end

    NoticeMailer.sendmail_confirm(client_info).deliver
    flash[:success] = 'sent'
    redirect_to root_path
  end
end
