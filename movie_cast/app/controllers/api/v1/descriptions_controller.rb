class Api::V1::DescriptionsController < ApplicationController
  def create
    description = Description.new(description_params)
    if description.save
      render json: description, status: :created
    else
      render json: description.errors, status: :uprocessable_entity
    end
  end
  private
  def description_params
    params.require(:description).permit(:cast_id, :movie_id)
  end
end
