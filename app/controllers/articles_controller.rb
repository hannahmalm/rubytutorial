class ArticlesController < ApplicationController
  def index
    #this will render whatever is in the views/articles/index.html.erb
    #give the view permission to view the index of articles.
    #Typically when using Index, this is giving a full list (all)
    #use the @to make it an INSTANCE variable and giving it access to all methods in the class
    @articles = Article.all 
  end
end
