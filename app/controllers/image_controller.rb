class ImageController < ApplicationController

  def index
    @a=Image.all
    @b=Cat.all

  end

  def show
    @a=Image.find(params[:id])
  end

  def new
    @a=Image.new
  end

  def create
    @a=Image.create(params[:image])
    if @a.save
      redirect_to :action=> 'index'
    else

      render 'new'

    end
  end


  def edit
    @a=Image.find(params[:id])
  end
  def update
    @a=Image.find(params[:id])
    if @a.update_attributes(params[:image])
      redirect_to :action=> 'index'
    else
      render 'edit'
    end
  end
  def destroy
    @a=Image.find(params[:id])
    if @a.delete
      redirect_to :action=>'index'
    end
  end


end
