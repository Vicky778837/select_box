class QuestionsController < ApplicationController
    def index
    	@questions = Question.all
    	
    end
   def destroy_multiple
     Question.destroy(params[:question_ids])
     respond_to do |format|
      format.html { redirect_to questions_url }
      format.json { head :no_content }
    end
  end
end
