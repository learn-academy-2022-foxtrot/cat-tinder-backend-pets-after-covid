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

  # describe "PATCH /update" do
  #   it "updates a pet" do
  #     pet_params = {
  #       pet: {
  #         name: 'Hazel', age: 3, enjoys: 'biting stuff', image: 'url'
  #       }
  #     }
  #     post '/pets', params: pet_params
  #     pet = Pet.first
      
  #     pet_params = {
  #       pet: {
  #         name: 'Daisy', age: 3, enjoys: 'biting stuff', image: 'url'
  #       }
  #     }
  
  #     patch "/pets/#{pet.id}", params: pet_params
      
  #     expect(pet.name).to eq 'Daisy'
  #   end
  # end

end


