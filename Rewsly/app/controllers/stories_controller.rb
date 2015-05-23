class StoriesController < ApplicationController
    def index #front page
        @stories = Story.all
        # params[:title] ? Story.find_by_title(params[:title]) : Story.all
        
        # unless params[:title]
        #   redirect_to story_path
        
        # end
    end
   
   
    def new #creating a new entry story form
        @stories = Story.new 
    end
    
    def create #POST saving new story form 
    
        safe_story_params = params.require(:story).permit(:title,:link,:upvote,:category) #created safe params
        @stories = Story.new safe_story_params #create a instance variable creation of the Story Object so we can use it! 
        @stories.save #Question? couldn't just solve this with a Story.create? 
        
        redirect_to @stories #magick! 
    end
    
    def show
        @stories = Story.find params[:id]
    end
    
    def search
        
    end


end 
