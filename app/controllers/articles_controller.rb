class ArticlesController < ApplicationController
  def index
    #this will render whatever is in the views/articles/index.html.erb
    #give the view permission to view the index of articles.
    #Typically when using Index, this is giving a full list (all)
    #use the @to make it an INSTANCE variable and giving it access to all methods in the class
    @articles = Article.all 
  end

  def show #Read
    @article = Article.find(params[:id])
  end 

  def new #Create
    @article = Article.new
  end 

  def create #Create
    @article = Article.new(title: '...', body: '...')

    if @article.save 
      redirect_to @article 
    else 
      render :new, status: :unprocessable_entity
    end 
  end 
end
