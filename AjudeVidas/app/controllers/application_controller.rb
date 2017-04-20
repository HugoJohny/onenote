class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception


	def need_register
		msg_registro = 'Para executar esta ação você precisará preencher os seus dados pessoais.'
		redirect_to new_pessoa_path, notice: msg_registro if current_user.has_pessoa == false
	end

end
