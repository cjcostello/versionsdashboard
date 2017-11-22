class AppsController < ApplicationController
  def index
    @app = App.all
  end

  def show
    @app = App.find(params[:id])
  end

  def new
    
  end

  def create
    @app = App.new(app_params)
    @app.save
    redirect_to @app
  end

  private
    def app_params
      params.require(:app).permit(:name,:ip,:command)
    end
end
