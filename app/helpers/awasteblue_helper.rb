module AwasteblueHelper
  def resource_name
    :user
  end

  def resource
    @resource ||= User.new
  end

  def devise_mapping
    @devise_mapping ||= Devise.mappings[:user]
  end

  #Gambi pra funcionar 2 form pra login
  def resource_name_entity
    :entity
  end

  def resource_entity
    @resource ||= Entity.new
  end

  def devise_mapping_entity
    @devise_mapping ||= Devise.mappings[:entity]
  end
end
