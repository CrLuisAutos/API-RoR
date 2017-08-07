class SupportsController < ApplicationController
  before_action :set_support, only: [:show, :edit, :update, :destroy]

  # GET /supports
  # GET /supports.json
  def index
    supports = Support.all
    render(json: supports, status: 200)
  end

  # GET /supports/1
  # GET /supports/1.json
  def show
    support= Support.find_by params[:id]
    if support!= nil
      render(json: support, status: 200)   
    else
      render(json: support.errors, status: 404)
    end 
  end

  # POST /supports
  # POST /supports.json
  def create
    support= Support.new
    support.detalle=params[:detalle]
    support.estado=params[:estado]
    support.titulo=params[:titulo]
    
    if support.save
      render(json: support, status: 201 , location: support)
    else 
      render(json: support.errors, status: 422)
    end
  end

  # PATCH/PUT /supports/1
  # PATCH/PUT /supports/1.json
  def update
    support=Support.find_by params[:id]
    if support!= nil
      support.detalle=params[:detalle] ? params[:detalle]: support.detalle
      support.estado=params[:estado] ? params[:estado]: support.estado
      support.titulo=params[:titulo] ? params[:titulo]: support.titulo
      if user.save
        render(json: support, status: 201)
      end   
    else
      render(json: support.errors, status: 404)
    end 
  end

  # DELETE /supports/1
  # DELETE /supports/1.json
  def destroy
   support=Support.find_by id:(params[:id])
    if support != nil
      if support.destroy
        head 204
      end
    else
       head 404
    end
  end
end
