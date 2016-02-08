module ApplicationHelper
  def generate_category_with_subs(category)
    category_has_subs = category.subcategories != nil && category.subcategories.count > 0
    return_string = "<li#{category_has_subs ? ' class="category-with-subs"' : ''}><a href=\"/category/#{category.id}\">#{category.name}</a>"
    if category_has_subs
      return_string += '<ul class="sub-menu">'
      category.subcategories.each do |sub|
        return_string += generate_category_with_subs sub
      end
      return_string += '</ul>'
    end
    return_string += '</li>'
    return_string
  end
end
