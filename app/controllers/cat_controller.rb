  class CatController < ApplicationController

   def index
     @img=Image.find(params[:id])
     @cats=@img.cats.all
   end

   def show
     #@img=Image.find(params[:id])
    @cat=Cat.find(params[:id])
  end

   def new
     @img=Image.find(params[:id])
      @cat=@img.cats.new
   end

  def create
    @img=Image.find(params[:id])
    @cat=@img.cats.create(params[:cat])

    if @cat.save
      redirect_to :action=> 'index', :id=>@img.id
    else

      render 'new'

    end
  end


  def edit

    @cat=Cat.find(params[:id])
    @img=@cat.image
  end
  def update
    @cat=Cat.find(params[:id])
        @img=@cat.image
    if @cat.update_attributes(params[:cat])
      redirect_to :action=> 'index', :id=>@img.id
    else
      render 'edit'
    end
  end
  def destroy
    @cat=Cat.find(params[:id])
    @img=@cat.image
    if @cat.delete
      redirect_to :action=>'index', :id=>@img.id
    end
  end


end
