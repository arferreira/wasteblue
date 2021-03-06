class LegalEntity < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :contact_name, :telephone_home, :telephone_cell, :address, :district, :city, :state, :postal_code, :email, :password, :password_confirmation, :remember_me, :company_name, :cnpj, :fancy_name, :area_of_activity, :waste_generated, :website, :type_of_company
  # attr_accessible :title, :body

  def formulario_completo?
    unless self.contact_name.blank? or self.telephone_home.blank? or self.telephone_cell.blank? or self.district.blank? or self.address.blank? or self.city.blank? or self.state.blank? or self.postal_code.blank? or self.email.blank? or self.company_name.blank? or self.fancy_name.blank? or self.cnpj.blank? or self.area_of_activity.blank? or self.website.blank? or self.waste_generated.blank? or self.type_of_company.blank?
      return true
    end
      return false
  end
end
