require 'rails_helper'

RSpec.describe "Pets", type: :request do
  describe "GET /index" do
    it "gets a list of pets" do
      Pet.create(name: 'Hazel', age: 3, enjoys: 'biting stuff', image: 'url')

      get '/pets'
      pet = JSON.parse(response.body)
      expect(response.status).to eq(200)
      expect(pet.length).to eq 1
    end
  end

  describe "POST /create" do
    it "creates a pet" do
      pet_params = {
        pet: {
          name: 'Hazel', age: 3, enjoys: 'biting stuff', image: 'url'
        }
      }
      post '/pets', params: pet_params
      pet = Pet.first
      expect(pet.name).to eq 'Hazel'
      expect(pet.age).to eq 3
      expect(pet.enjoys).to eq 'biting stuff'
      expect(pet.image).to eq 'url'
    end
  end

  describe "PATCH /update" do
    it "updates a pet" do
      pet1 = Pet.create(id: 1, name: 'Bear', age: 3, enjoys: 'Lots of pets and snacks', image: 'URL')
      p "pet", pet1
     
      pet1 = patch '/pets/1',  
        params:{
          pet:{
            id: 1, name: 'Layla', age: 4, enjoys: 'Bullying her sister Bear', image: 'URL-2'}}
      p "pet", pet1

      expect(response.status).to eq(200)
      pet = Pet.find(1)
      
      expect(pet.name).to eq('Layla')
    end
  end



  describe "cannot create a pet without valid attributes" do
    it "doesn't create a pet without a name" do
     pet_params = {
        pet: {
           age: 3, enjoys: 'biting stuff', image: 'url'
       }
     }
     post '/pets', params: pet_params
     expect(response.status).to eq(422)
     json = JSON.parse(response.body)
     expect(json["name"]).to include "can't be blank"
     end
  end

end


