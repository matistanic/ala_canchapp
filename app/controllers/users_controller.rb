class UsersController < ApplicationController
    def show
        @user = User.find(params[:id])
        @events = current_user.events
    end

    def index
        @user = User.find(params[:id])
        # Get message value from form
        @message = params
    
          # First, instantiate the Mailgun Client with your API key
          mg_client = Mailgun::Client.new 'fdbf60934c452d6848a14dcb765a3c3f-07bc7b05-43788e62'
    
          # Define your message parameters

          message_params = {:from    => 'Mailgun Test Project <postmaster@' + 'alacanchapp.tk' + ">",
                            :to      => @user.email,
                            :subject => 'Mailgun message via API',
                            :text    => 'your password is',
                            "o:tag"  => 'test'}
    
          # Send your message through the client
          mg_client.send_message 'alacanchapp.tk', message_params
    
          # Redirect on success
          redirect_to root_path, notice: 'Message was sent via API.'
    end

end
