class SightingsController < ApplicationController
  def index
    @sighting = Sighting.where(:start_date => params[:sightings][:start_date]..params[:sightings][:end_date])
    render('sightings/index.html.erb')

  end
  def new
    @species = Species.find(params[:species_id])
    @sighting = @species.sightings.new
    render('sightings/new.html.erb')
  end

  def create
    @sighting = Sighting.new(params[:sighting])
    if @sighting.save
      @specie = Species.find(params[:sighting][:specie_id])
      render('species/show.html.erb')
    else
      puts "wat"
    end
  end

  def destroy

    @sighting = Sighting.find(params[:id])
    @specie = Species.find(@sighting.specie_id)
    @sighting.destroy
    render('species/show.html.erb')
  end
  # currently there is no need for edit/update functionality
  # def edit
  # end

  # def update
  # end

  def by_date
    @sightings = Sighting.all
    render('sighting/date.html.erb')
  end
end
