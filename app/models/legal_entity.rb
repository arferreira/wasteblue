class LegalEntity < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  # attr_accessible :title, :body

  def formulario_completo?
    unless self.email.blank? or self.company_name.blank? or self.fancy_name.blank? or self.cnpj.blank? or self.area_of_activity.blank? or self.website.blank? or self.waste_generated.blank? or self.type_of_company.blank?
      return true
    end
      return false
  end
end
