class EntriesController < ApplicationController

  def index
    @entries = Entry.all
    render :index
    # here we'll define some @instance_variables to store data from the database for the views to use
  end

  def show
    @entry = Entry.find{params[:id]}
  end

  def new
    @entry = Entry.new
  end

  def create
    redirect_to entries_url
  end

  def edit
    @entry = Entry.find(params[:id])
  end

  def update
    redirect_to entry_url(params[:id])
    @entry = Entry.new
    @entry.word = params[:entry][:word]
    @entry.language = params[:entry][:language]
    @entry.definition = params[:entry][:definition]
    if @entry.save
      redirect_to entries_url
    else
      render :new
    end
  end

  def destroy
    redirect_to entries_url
  end

end
