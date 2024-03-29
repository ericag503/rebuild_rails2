class LessonsController < ApplicationController
  def index
    @lessons = Lesson.all
    render('lessons/index.html.erb')
  end

  def new
    render('lessons/new.html.erb')
  end

  def create
    @lesson = Lesson.new(params[:lesson])
    if @lesson.save
      flash[:notice] = "The lesson has been added!"
      redirect_to("/lessons/")
    else
      render('lessons/new.html.erb')
    end
  end
end

  def show
    @lesson = Lesson.find(params[:id])
    render('lessons/show.html.erb')
  end
