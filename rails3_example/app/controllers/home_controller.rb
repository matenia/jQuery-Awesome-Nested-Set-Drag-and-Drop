class HomeController < ApplicationController
  
  def index
  
  end
  
  def savesort
    neworder = JSON.parse(params[:set])
    prev_item = nil
    neworder.each do |item|
      dbitem = Category.find(item['id'])
      prev_item.nil? ? dbitem.move_to_root : dbitem.move_to_right_of(prev_item)
      sort_children(item, dbitem) unless item['children'].nil?
      prev_item = dbitem
    end
    Category.rebuild!
    render :nothing => true
  end
  
  def sort_children(element,dbitem)
    prevchild = nil
    element['children'].each do |child|
      childitem = Category.find(child['id'])
      prevchild.nil? ? childitem.move_to_child_of(dbitem) : childitem.move_to_right_of(prevchild)
      sort_children(child, childitem) unless child['children'].nil?
      prevchild = childitem
    end
  end

end
