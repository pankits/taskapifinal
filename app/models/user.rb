class User < ApplicationRecord
  include Devise::JWT::RevocationStrategies::JTIMatcher

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
        
    devise :database_authenticatable,:jwt_authenticatable, :registerable,
    jwt_revocation_strategy: JwtDenylist

    USER_TYPE = { admin: 0, teacher: 1, student: 2 }
    
    enum user_type: USER_TYPE
   

  # def jwt_payload
  #   self.jti = self.class.generate_jti
  #   self.save

  # # super isn't doing anything useful, but if the gem updates i'll want it to be safe
  #   super.merge({
  #     jti: self.jti,
  #     usr: self.id,
  #   })

  #   def generate_jwt
  #     JWT.encode({ id: id,
  #                 exp: 5.days.from_now.to_i },
  #               Rails.env.devise.jwt.secret_key)
  #   end
  # end
end


