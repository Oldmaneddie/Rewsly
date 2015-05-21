class StoriesController < ApplicationController
    def index
        @stories = Story.all
    end
   
   
    def new
        @stories = Story.new 
        
        
    end
    
    def create
    
        safe_story_params = params.require(:story).permit(:title,:link,:upvote,:category) #created safe params
        @stories = Story.new safe_story_params #create a instance variable creation of the Story Object so we can use it! 
        @stories.save #Question? couldn't just solve this with a Story.create? 
        
        redirect_to @stories #magick! 
    end
    
    def show
        @stories = Story.find params[:id]
    end


end 
