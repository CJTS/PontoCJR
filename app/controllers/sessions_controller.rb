class SessionsController < ApplicationController

	def create
		usuario = Usuario.find_by (params[:login])

		if usuario && usuario.authenticate(params[:senha])
			session[:usuario_id] = usuario.id
			redirect_to '/atividades/'
		else
			redirect_to '/login'
		end


		respond_to do |format|
			if @usuario.save
				format.html { redirect_to @usuario, notice: 'Usuario was successfully created.' }
				format.json { render :show, status: :created, location: @usuario }
			else
				flash[:danger] = 'Ei man! azedou!'
				format.html { render :new }
				format.json { render json: status: 400 }
			end
		end
	end

	def destroy
		session[:usuario_id] = nil
    	redirect_to '/login'
	end

end