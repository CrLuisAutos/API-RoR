class ReunionsController < ApplicationController
  before_action :set_reunion, only: [:show, :edit, :update, :destroy]

 def index
    reunion = Reunion.all
    render(json: reunion, status: 200)
  end

  # GET /reunions/1
  # GET /reunions/1.json
  def show
    reunion= Reunion.find_by params[:id]
    if reunion!= nil
      render(json: reunion, status: 200)   
    else
      render(json: reunion.errors, status: 404)
    end 
  end

  # POST /reunions
  # POST /reunions.json
  def create
    reunion= Reunion.new
    reunion.fecha=params[:fecha]
    reunion.titulo=params[:titulo]
    reunion.virtual=params[:virtual]
    
    if reunion.save
      render(json: reunion, status: 201 , location: reunion)
    else 
      render(json: reunion.errors, status: 422)
    end
  end

  # PATCH/PUT /reunions/1
  # PATCH/PUT /reunions/1.json
  def update
    reunion=Reunion.find_by params[:id]
    if Reunion!= nil
      reunion.detalle=params[:detalle] ? params[:detalle]: reunion.detalle
      reunion.estado=params[:estado] ? params[:estado]: reunion.estado
      reunion.titulo=params[:titulo] ? params[:titulo]: reunion.titulo
      if user.save
        render(json: reunion, status: 201)
      end   
    else
      render(json: reunion.errors, status: 404)
    end 
  end

  # DELETE /reunions/1
  # DELETE /reunions/1.json
  def destroy
   reunion=Reunion.find_by id:(params[:id])
    if reunion != nil
      if reunion.destroy
        head 204
      end
    else
       head 404
    end
  end
end
