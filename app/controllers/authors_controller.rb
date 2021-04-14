class AuthorsController < ApplicationController
  def index
    @authors = Author.all
    render json: {
      values: @authors,
      message: "success",
    }, status: 200
  end

  def show
    @author = Author.find_by(id: params[:id])
    if @author.present?
      render json: {
        values: @author,
        message: "success"
      }, status: 200
    else
      render json: {
        values: "",
        message: "ID not found"
      }, status: 400
    end
  end

  def create
    @author = Author.new(params.permit(:name))
    if @author.save
      render json: {
        values: @author,
        message: "success"
      }, status: 200
    else
      render json: {
        values: "",
        message: @author.errors.full_messages
      }, status: 400
    end
  end
end
