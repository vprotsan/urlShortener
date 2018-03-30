class UrlController < ApplicationController
  def new
    @url = Url.new
  end

  def create
    @url = Url.new(url_params)

    respond_to do |format|
      if @url.save
          format.js { render :s_create, layout: false, content_type: 'text/javascript' }
      else
          puts @url.errors.full_messages
          format.js { render :e_create }
      end
    end
  end

  def list
    @urls = Url.all
  end

  def fwd
    @url = Url.where(short_url: params[:short_url])
    redirect_to @url[0].long_url
  end

  private
  def url_params
    params.require(:url).permit(:long_url)
  end

end
