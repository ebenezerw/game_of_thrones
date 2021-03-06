class HousesController < ApplicationController
    def index
        @house = House.all
    end

    def show
        @house = House.find(params[:id])
    end

    def new; end

    def create
        @house = House.create(house_params)
        redirect_to @house
     end

    def edit
        @house = House.find(params[:id])
    end

    def update
      @house = House.find(params[:id])
      @house.update(house_params)
      redirect_to @house
    end

def destroy
  @house = House.find(params[:id])
  @house.destroy
  redirect_to houses_path

end
    private

    def house_params
        params.require(:house).permit(:name, :motto)
    end
end
