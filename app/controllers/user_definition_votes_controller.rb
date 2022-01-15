class UserDefinitionVotesController < ApplicationController
  # POST /definition_votes
  def create
    definition = TermDefinition.find(params[:definition_id])
    user_definition_vote = UserDefinitionVote.new(user_id: current_user.id, term_definition_id: params[:definition_id])
    user_definition_vote.save

    respond_to do |format|
      format.html { redirect_to definition.term }
    end
  end

  # DELETE /term_definitions/1 or /term_definitions/1.json
  def destroy
    definition = TermDefinition.find(params[:definition_id])
    definition_vote = UserDefinitionVote.where(user_id: current_user.id, term_definition_id: params[:definition_id]).first
    definition_vote.destroy

    respond_to do |format|
      format.html { redirect_to definition.term }
    end
  end
end
