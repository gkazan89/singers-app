class SingersController < ApplicationController
  def index
    @singers = Singer.all
    render "index.json.jbuilder"
  end

  def show
    @singer = Singer.find_by(id: params[:id])
    render "show.json.jbuilder"
  end

  def create
    @singer = Singer.new(
      name: params[:name],
      genre: params[:genre],
      born: params[:born],
      )
    @singer.save
    render "show.json.jbuilder"
  end

  def update
    @singer = Singer.find_by(id: params[:id])
    @singer.name = params[:name] || @singer.name
    @singer.genre = params[:genre] || @singer.genre
    @singer.born = params[:born] || @singer.born
    @singer.save
    render "show.json.jbuilder"
  end

  def destroy
    @singer = Singer.find_by(id: params[:id])
    @singer.destroy
    render json:{message: "Singer removed"}
  end


end
