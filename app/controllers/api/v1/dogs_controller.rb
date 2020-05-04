class Api::V1::DogsController < ApplicationController
  def create
    dog = Dog.new(dog_params)
    if dog.valid?
      dog.save
      cookies[:dog] = dog.id
      render json: DogSerializer.new(dog).serialized_json
    else
      render json: {errors: dog.errors.full_messages}
    end
  end

  private

  def dog_params
    params.require(:dog).permit(:name, :breed)
  end

end
