class PlaysController < ApplicationController
  def create
    @adoption = Adoption.find(params[:adoption_id])
  end

  private

  def play_params
    params.require(:play).permit(
    :interaction_id
    )
  end
end
