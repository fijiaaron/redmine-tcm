class PollsController < ApplicationController
    unloadable

    def index
        @polls = Poll.find(:all)    
    end


    def vote
        poll = Poll.find(params[:id])
        poll.vote(params[:answer])
        if poll.save
            flash[:notice] = 'Vote saved.'
            redirect_to :action => 'index'
        end
    end

end
