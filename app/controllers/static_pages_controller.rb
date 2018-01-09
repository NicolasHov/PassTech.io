class StaticPagesController < ApplicationController
  def home
  end

  def subscribe
  end

  def contact
  end

# TODO faire fonctionner les contact_send_message et subscribe_email
# TODO faire fonctionenr les flash

  def contact_send_message
    if params[:email] != "" && params[:message] != ""
      # UserMailer.contactEmail(params[:name], params[:email], params[:phone], params[:message]).deliver
      flash[:success] = "Email envoyé ! ✌️"
    else
      flash[:danger] = "Oups erreur, merci de recommencer"
    end
    redirect_to home_contact_path
  end

  def subscribe_email
    if params[:email] != ""
     @email = params[:email]
     flash[:success] = "Inscription enregistrée ! ✌️"
    end
    redirect_to home_path
  end

end
