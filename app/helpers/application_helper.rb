module ApplicationHelper
  def awesome(icon_name_postfix, hash={})
    content_tag :span, nil, hash.merge(class: "fa fa-#{icon_name_postfix.to_s.gsub('_','-')} aria-hidden='true'")
  end
end
