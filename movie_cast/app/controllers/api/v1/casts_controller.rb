class Api::V1::CastsController < ApplicationController
  def index
    casts = Cast.all.includes(:movies)
    render json: casts, include: :movies
  end
  def create
    cast = Cast.new(cast_params)
    if cast.save
      render json: cast, status: :created
    else
      render json: cast.errors, status: :unprocessable_entity
    end
  end
  private
  def cast_params
    params.require(:cast).permit(:name, :bio)
  end
end
