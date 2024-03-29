class ImageController < ApplicationController
# for help https://github.com/skillachie/File-Upload-App


  def index
    @a=Image.all

  end

  def show
   puts params.inspect
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

  def download
   # puts params.inspect
    dwnl=Image.find(params[:id])

    send_file dwnl.avatar.path,
              :filename=>dwnl.avatar_file_name,
              :type=>dwnl.avatar_content_type,
              :disposition =>'attachment'
    flash[:notice]='your file has been downloaded'
  end

  def destroy
    @a=Image.find(params[:id])
    if @a.delete
      redirect_to :action=>'index'
    end
  end


end
