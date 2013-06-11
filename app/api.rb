require 'grape'

class API < Grape::API

  format :json

  get "posts" do
    Post.all
  end

  get 'posts/:id' do
    Post.find(params[:id])
  end

  post "posts" do
    post = Post.new usr: params[:usr], device: params[:device], content: params[:content], app: params[:app] , ip: params[:ip]  

    if post.save
      { postId: post.id }
    else
      error!({ errors: post.errors.messages }, 403)
    end
  end

  # put "posts/:id" do
  #   post = Post.find(params[:id])

  #   post.usr = params[:usr]
  #   post.content = params[:content]

  #   if post.save
  #     { postId: post.id }
  #   else
  #     error!({ errors: post.errors.messages }, 403)
  #   end
  # end

  # delete "posts/:id" do
  #   Post.find(params[:id]).destroy
  # end

end