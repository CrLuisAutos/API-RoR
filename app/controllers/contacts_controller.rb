class ContactsController < ApplicationController
  before_action :set_contact, only: [:show, :edit, :update, :destroy]
def index
    contact = Contact.all
    render(json: contact, status: 200)
  end

  # GET /contacts/1
  # GET /contacts/1.json
  def show
    contact= Contact.find_by params[:id]
    if contact!= nil
      render(json: contact, status: 200)   
    else
      render(json: contact.errors, status: 404)
    end 
  end

  # POST /contacts
  # POST /contacts.json
  def create
    contact= Contact.new
    contact.nombre=params[:nombre]
    contact.apellido=params[:apellido]
    contact.puesto=params[:puesto]
    contact.telefono=params[:telefono]
    
    if contact.save
      render(json: contact, status: 201 , location: contact)
    else 
      render(json: contact.errors, status: 422)
    end
  end

  # PATCH/PUT /contacts/1
  # PATCH/PUT /contacts/1.json
  def update
    contact=Contact.find_by params[:id]
    if contact!= nil
      contact.apellido=params[:apellido] ? params[:apellido]: contact.apellido
      contact.nombre=params[:nombre] ? params[:nombre]: contact.nombre
      contact.puesto=params[:puesto] ? params[:puesto]: contact.puesto
      contact.telefono=params[:telefono] ? params[:telefono]: contact.telefono
      if user.save
        render(json: contact, status: 201)
      end   
    else
      render(json: contact.errors, status: 404)
    end 
  end

  # DELETE /contacts/1
  # DELETE /contacts/1.json
  def destroy
   contact=Contact.find_by id:(params[:id])
    if contact != nil
      if contact.destroy
        head 204
      end
    else
       head 404
    end
  end
end
