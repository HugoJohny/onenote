class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable
         #, :validatable - Obriga a validação de usuarios por e-mail.

	def has_pessoa
		return pessoa_id.nil? == false	
	end

end
