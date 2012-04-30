class CatController < ApplicationController

   def index
     @a=Cat.all
   end

   def show
    @a=Cat.find(params[:id])
  end

   def new
      @a=Cat.new
   end

  def create
    @a=Cat.new(params[:cat])
    if @a.save
      redirect_to :action=> 'index'
    else

      render 'new'

    end
  end


  def edit
    @a=Cat.find(params[:id])
  end
  def update
    @a=Cat.find(params[:id])
    if @a.update_attributes(params[:cat])
      redirect_to :action=> 'index'
    else
      render 'edit'
    end
  end
  def destroy
    @a=Cat.find(params[:id])
    if @a.delete
      redirect_to :action=>'index'
    end
  end


end
