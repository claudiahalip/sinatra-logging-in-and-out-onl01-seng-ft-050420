class Helpers
  
  def self.current_user(session)
    @user_found = User.find_by(session[:user_id])
    if @user_found
      @user_found
    end 
  end 
  
  def self.is_logged_in?(session)
    if !!session.include?(session[:user_id])
      true 
    else
      false 
    end 
    
  end 
end