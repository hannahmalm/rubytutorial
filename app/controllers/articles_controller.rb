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

  def create #Create --> Use Strong Params
    @article = Article.new(article_params)

    if @article.save 
      redirect_to @article 
    else 
      render :new, status: :unprocessable_entity
    end 
  end 

  #edit is similar to new
  #edit fetches article from database, and stores it in instance variable to be used when building edit form 
  def edit 
    @article = Article.find(params[:id])
  end 

  #update is similar to create
  #used with edit form
  #update refetches article from database and updates it with article_params
  def update 
    @article = Article.find(params[:id])

    if @article.update(article_params)
      redirect_to @article 
    else 
      render :edit, status: :unprocessable_entity
    end 
  end 


  def destroy 
    @article = Article.find(params[:id])
    @article.destroy 

    redirect_to root_path, status: :see_other
  end 


  #submitted data is put into params
  #pass a single Hash that contains the values, if you pass malicious or unfiltered params, Rails will raise an error
  private 
  def article_params
      params.require(:article).permit(:title, :body)
  end 
end
