require 'grape'

class API < Grape::API

  format :json

  get "posts" do
    Post.all.map { |e| e.usr }
  end

  get 'posts/:id' do
    Post.where(:id => params[:id])
  end

  post "posts" do
    post = Post.insert(:usr => params[:usr], :device => params[:device], :content => params[:content] , :app =>params[:app], :ip => params[:ip])  
  end

end

class Web < Sinatra::Base
  get '/' do
    "ok"
  end
end
