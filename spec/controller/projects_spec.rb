require "rails_helper"

RSpec.describe ProjectsController, type: :controller do
  context "GET #index" do
    it "returns a success response" do
      get :index
      # expect(response.success).to eq(true)
      expect(response).to be_success
    end
  end
  def new_user
    user= FactoryBot.create(:user)
    login_as(user)
  end
  def new_user
    visit root_path
    click_link 'Sign up'
    within("form")do
    fill_in "Email", with: "testing@test.com"
    fill_in "Password", with: "123456"
    fill_in "Password confirmation", with: '123456'
    click_button "Sign up"
  end
end

  context "GET #show" do
    let!(:project) { Project.create(title: "Test title", description: "Test description") }
    it "returns a success response" do
      get :show, params: { id: project }
      expect(response).to be_success
    end
  end
end