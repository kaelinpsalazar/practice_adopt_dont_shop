require 'rails_helper'

RSpec.describe "applications show page", type: :feature do
  before :each do
    @application_1 = Application.create!(applicant_name: "Monkey D Luffy", street_address: "1345 Grand Line Way",city: "Denver", state: "Colorado", zip_code: "80202", description: "I love this cute little thing!", pet_names: "Tony Tony Chopper",application_status: "Pending")
    @applicaiton_2 = Application.create!(applicant_name: "Vlad Taltos", street_address: "3456 dragaeron empire street",city: "Louisville", state: "Kentucky", zip_code: "40241", description: "I am already syonically linked",  pet_names: "chull face", application_status: "Approved")
    @application_3 = Application.create!(applicant_name: "Kaladan Stormblessed", street_address: "wind runner parkway",city: "Urithiru", state: "Roshar", zip_code: "83212", description: "Life before death", pet_names: "Loiosh", application_status: "In Progress")
    # @pet_1 = Pet.create(adoptable: true, age: 1, breed: "racoon-dog", name: "Tony Tony Chopper", shelter_id: shelter.id)
    # @pet_2 = Pet.create(adoptable: true, age: 3, breed: "chull", name: "chull face", shelter_id: shelter.id)
    # @pet_3 = Pet.create(adoptable: false, age: 2, breed: "jhereg", name: "Loiosh", shelter_id: shelter.id)

    # @shelter_1 = Shelter.create(foster_program: true, name: "Happy Shelters", city: "Denver", rank:2)
    # @shelter_2 = Shelter.create(foster_program: true, name: "Paws n Stuff", city: "Louisville", rank:1)
    # @shelter_3 = Shelter.create(foster_program: true, name: "Storms n Suds", city: "Urithiru", rank:2)

  end

  describe "as a visitor do" do
    describe "when i visit the pplications show page" do
      it "shows the attributes of the applications" do
        visit "/applications/#{@application_1.id}"

        expect(page).to have_content(@application_1.applicant_name)
        expect(page).to have_content(@application_1.street_address)
        expect(page).to have_content(@application_1.city)
        expect(page).to have_content(@application_1.state)
        expect(page).to have_content(@application_1.zip_code)
        expect(page).to have_content(@application_1.description)
        expect(page).to have_content(@application_1.pet_names)
        expect(page).to have_content(@application_1.application_status)
 


      end
    end
  end



end