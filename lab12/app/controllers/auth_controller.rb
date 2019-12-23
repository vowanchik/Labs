require 'bcrypt'
class AuthController < ApplicationController
  def index
    @msg = ''
    if session[:id]
      puts 'already signed in'
      redirect_to '/calculations'
    elsif params[:username] && params[:pwd]
      user = User.
             find_by(username: params[:username])
      pwds_match = false
      if not user.nil?
        pwds_match = BCrypt::Password.new(user.password_digest) == params[:pwd]
      end

       if pwds_match
         puts user.id
         session[:id] = user.id
         puts 'session id: ' + session[:id].to_s
         puts 'successfully signed in: ' + user.username + '; ' + user.id.to_s
         redirect_to '/calculations'
       else
         puts 'signing in failed'
         @msg = 'Could not log in'
       end
    end
  end

  def signout
    session[:id] = nil
    puts 'successfully signed out'
    redirect_to action: 'index'
  end
end
