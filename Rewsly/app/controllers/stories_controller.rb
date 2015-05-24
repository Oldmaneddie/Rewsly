class StoriesController < ApplicationController
    def index #front page
        @stories = Story.all
        # params[:title] ? Story.find_by_title(params[:title]) : Story.all
        
        # unless params[:title]
        #   redirect_to story_path
        
        # end
    end
   
   
    def new 
        @stories = Story.new 
    end
    
    def create 
    
        safe_story_params = params.require(:story).permit(:title,:link,:upvote,:category) 
        @stories = Story.new safe_story_params  
        @stories.save 
        
        redirect_to @stories 
    end
    
    def show
        @stories = Story.find params[:id]
    end
    
    def search
        
    end


end 

#Law of Demeter? keeping methods as seperate and deconsturcted as possible?