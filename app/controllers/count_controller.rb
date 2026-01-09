class CountController < ApplicationController
  def new
    @count = Count.new
  end

  def create
    @count = Count.new(count_params)

    if @count.save
      redirect_to @count
    else
      render :new, status: :unprocessable_entity
    end
  end

  private
    def count_params
      params.require(:count).permit(:sensorGroup)
    end
end