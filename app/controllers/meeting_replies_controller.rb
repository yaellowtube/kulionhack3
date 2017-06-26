class MeetingRepliesController < ApplicationController
    def create
        @meeting = Meeting.find(params[:meeting_id])
        @meeting_reply = @meeting.meeting_replies.create(reply_params)
        redirect_to meeting_path(@meeting)
    end
    
    def destroy
        @meeting = Meeting.find(params[:meeting_id])
        @meeting_reply = @meeting.meeting_replies.find(params[:id])
        @meeting_reply.destroy
        redirect_to meeting_path(@meeting)
    end
    
    private
        def reply_params
            params.require(:meeting_reply).permit(:reply_user, :body)
        end
end
