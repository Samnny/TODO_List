class ToDoItemsController < ApplicationController
  def new
    @to_do_list = ToDoList.find(params[:to_do_list_id])
    @to_do_item = @to_do_list.to_do_items.build
  end

  def create
    @to_do_list = ToDoList.find(params[:to_do_list_id])
    @to_do_item = @to_do_list.to_do_items.build(to_do_item_params)
    if @to_do_item.save
      redirect_to to_do_lists_path
    else
      render :new
    end
  end
  # to_do_list_id description
  # def create
  #   @to_do_list = ToDoList.create(name: params[:to_do_list][:name])
  #   if @to_do_list.valid?
  #     redirect_to to_do_lists_path
  #   end
  # end

  def destroy
    @to_do_list = ToDoList.find(params[:to_do_list_id])
    @to_do_item = @to_do_list.to_do_items.find(params[:id])
    if @to_do_item.destroy
      redirect_to @to_do_list
    end
  end

  def edit
    @to_do_item = ToDoItem.find(params[:id])
  end
  

  # app/controllers/to_do_items_controller.rb

  def update
    @to_do_list = ToDoList.find(params[:to_do_list_id])
    @to_do_item = ToDoItem.find(params[:id])

    if @to_do_item.update(to_do_item_params)
      redirect_to to_do_lists_path
    else
      render :edit
    end
  end




  private

  def to_do_item_params
    params.require(:to_do_item).permit(:description)
  end
  
end