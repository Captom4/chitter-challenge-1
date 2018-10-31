class PeepController < ApplicationController
  # gets all of the peeps
  get "/peeps" do
    @peeps = Peep.all
    erb :'/peeps/index'
  end
  # gets the new peep
  get "/peeps/new" do
    erb :'/peeps/new'
  end
  # posts the new peep to the database
  post "/peeps" do
    unless params[:content].empty?
      Peep.create(:content => params[:content])
    end
    # needs to check if either are empty
    redirect "/peeps"
  end
  # gets a specific peep
  get "/peeps/:id" do
    @peep = Peep.find(params[:id])
    erb :'/peeps/show'
  end
  # gets the edit page for the peep
  get "/peeps/:id/edit" do
    @peep = Peep.find(params[:id])
    erb :'/peeps/edit'
  end
  # updates the peep with the id :id
  patch '/peeps/:id' do
    @peep = Peep.find(params[:id])
    @peep.update(:content => params[:content])
    redirect to "/peeps/#{@peep.id}"
  end
  # deletes the peep id :id
  delete '/peeps/:id/delete' do
    @peep = Peep.find(params[:id])
    @peep.delete
    redirect '/peeps'
  end
end