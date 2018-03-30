rails new ApplicationRecord
o scaffoldiung
table 2 columns
reails g model Url long_url short_url
rails g controller Url new create fwd list (actions)
rails db migrate


def new
@url = Url.new
end

in new.html.erb
form_with (model: @url, remote:true do |f|
f.long_url :long_url
f.short_url
div id ="short version here"


in routes
get 'urls' => 'url#list'
get 'urls/new' => 'url#new'
something else...

get ':id' => 'url#fwd'
get 'url/create' as 'urls' -naming routes

def create
  @url = Url.new(url_params)
  beybug

  if url.save
  redirect list path
  else
  render new
  end
end

provate
def url_params
params.require(:url).permit(:long_url)
end

in create.js.erb
$(div).text(<%= j )

in url.rb

def shorten
self.short_url || id
end

def fwd
@url = Url.find(params[:id])
redirect_to @url
end
