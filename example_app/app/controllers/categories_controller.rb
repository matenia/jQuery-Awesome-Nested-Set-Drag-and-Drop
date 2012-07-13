class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end
  
  def show
    @category = Category.find(params[:id])
  end
  
  def new
    @category = Category.new
  end
  
  def create
    @category = Category.new(params[:category])
    if @category.save
      flash[:notice] = "Successfully created category."
      redirect_to @category
    else
      render :action => 'new'
    end
  end
  
  def edit
    @category = Category.find(params[:id])
  end
  
  def update
    @category = Category.find(params[:id])
    if @category.update_attributes(params[:category])
      flash[:notice] = "Successfully updated category."
      redirect_to @category
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @category = Category.find(params[:id])
    @category.destroy
    flash[:notice] = "Successfully destroyed category."
    redirect_to categories_url
  end
#  --- THE CODE BELOW DEALS WITH SAVING THE SORTED LIST ---
#  --- I WELCOME ANY SUGGESTIONS TO REFACTOR THIS (do the same with less database calls) ---
  def array
     # assign the sorted tree to a variable
     newlist = params[:ul].sort
     # initialize the previous item
     previous = nil
     #loop through each item in the new list (passed via ajax)
     newlist.each_with_index do |array, index|
       # get the category id of the item being moved
       moved_item_id = array[1][:id].gsub(/category_/,'')
       # find the object that is being moved (in database)
       @current_category = Category.find_by_id(moved_item_id)
       # if this is the first item being moved, move it to the root.
       unless previous.nil?
         @previous_item = Category.find_by_id(previous)
         @current_category.move_to_right_of(@previous_item)
       else
         @current_category.move_to_root
       end
       # then, if this item has children we need to loop through them
       unless array[1][:children].blank?
         # NOTE: unless there are no children in the array, send it to the recursive children function
         childstuff(array[1], @current_category)
       end
       # set previous to the last moved item, for the next round
       previous = moved_item_id
     end
     Category.rebuild!
     render :nothing => true
   end
   def childstuff(mynode, category)
     #loop through it's children - this is a hash that needs to be sorted
     for child in mynode[:children].sort
       # get the child id from each child passed into the node (the array)
       child_id = child[1][:id].gsub(/category_/,'')
       #find the matching category in the database
       child_category = Category.find_by_id(child_id)
       #move the child to the selected category
       child_category.move_to_child_of(category)
       # loop through the children if any
       unless child[1][:children].blank?
         # if there are children - run them through the same process
         childstuff(child[1], child_category)
       end
     end
   end
end