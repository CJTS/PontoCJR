class SessionsController < ApplicationController

	def create
		if Usuario.exists?(login: params[:login])
			usuario = Usuario.find_by (params[:login])
			# If the user exists AND the password entered is correct.

			if usuario && usuario.authenticate(params[:senha])
				# Save the user id inside the browser cookie. This is how we keep the user 
				# logged in when they navigate around our website.
				session[:usuario_id] = usuario.id
				redirect_to '/atividades/'
			else
				# If user's login doesn't work, send them back to the login form.
				redirect_to '/login'
			end
		end

		flash[:danger] = 'Ei man! azedou!' 
      	render 'new'
	end

	def destroy
		session[:usuario_id] = nil
    	redirect_to '/login'
	end

end