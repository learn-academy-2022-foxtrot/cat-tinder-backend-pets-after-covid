require 'rails_helper'

RSpec.describe Pet, type: :model do
    it "should validate name" do
      pet = Pet.create(age: 3, enjoys: "Cuddles and being the shy-ist girl in the world", image: "URL")
      expect(pet.errors[:name]).to_not be_empty
    end

    it "should validate age" do
      pet = Pet.create(name: "Bear", enjoys: "Cuddles and being the shy-ist girl in the world", image: "URL")
      expect(pet.errors[:age]).to_not be_empty
    end

    it "should validate enjoys" do
      pet = Pet.create(name: "Bear", age: 3, image: "URL")
      expect(pet.errors[:enjoys]).to_not be_empty
    end

    it "should validate image" do
      pet = Pet.create(name: "Bear", age: 3, enjoys: "Cuddles and being the shy-ist girl in the world")
      expect(pet.errors[:image]).to_not be_empty
    end

    it "should validate enjoys is at least 10 characters" do
        pet = Pet.create(name: "Bear", age: 3, enjoys: "Cuddles", image: "URL")
        expect(pet.errors[:enjoys]).to_not be_empty
      end
    
  end