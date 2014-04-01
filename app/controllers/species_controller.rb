class SpeciesController < ApplicationController
  def index
    @species = Species.all
    render("species/index.html.erb")
  end

 def show
  @specie = Species.find(params[:id])
  render('species/show.html.erb')
 end

  def create
    @species = Species.new(params[:species])

    if @species.save
      render('species/done.html.erb')
    else
      render('species/new.html.erb')
    end
  end

  def new
    @species = Species.new
    render("species/new.html.erb")
  end

  def update
    puts params
    @species = Species.find(params[:id])
    if @species.update(params[:species])
      render('species/done.html.erb')
    else
      render("species/edit.html.erb")
    end
  end

  def edit
    @species = Species.find(params[:id])
    render("species/edit.html.erb")
  end

  def destroy
    @species = Species.find(params[:id])
    @species.destroy
    index
  end
end
