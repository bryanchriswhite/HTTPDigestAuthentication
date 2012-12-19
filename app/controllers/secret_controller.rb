require 'digest/md5'
class SecretController < ApplicationController
  REALM = "SuperSecret"

  before_filter :authenticate

  def index
  end

  private
    def authenticate
      authenticate_or_request_with_http_digest(REALM) do |username|
        User.find_by_username(username).password_hash
      end
    end
end
