class SpeciesController < ApplicationController
  def index
    puts "index"
    puts params
    @species = Species.all
    render("species/index.html.erb")
  end

 def show
  puts "show"
  puts params
  @specie = Species.find(params[:id])
  render('species/show.html.erb')
 end

  def create
    puts "create"
    puts params
    @species = Species.new(params[:species])

    if @species.save
      render('species/done.html.erb')
    else
      render('species/new.html.erb')
    end
  end

  def new
    puts "new"
    puts params
    @species = Species.new
    render("species/new.html.erb")
  end

  def update
    puts "update"
    puts params
    @species = Species.find(params[:species][:id])
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
