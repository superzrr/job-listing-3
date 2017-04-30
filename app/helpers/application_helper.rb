module ApplicationHelper
  def awesome(icon_name_postfix, hash={})
    content_tag :span, nil, hash.merge(class: "fa fa-#{icon_name_postfix.to_s.gsub('_','-')} aria-hidden='true'")
  end

  def resource_name
    :user
  end

  def resource
      @resource ||= User.new
  end

  def resource_class
      User
  end

  def devise_mapping
      @devise_mapping ||= Devise.mappings[:user]
  end
end
