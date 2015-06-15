class BearsController < ApplicationController
  http_basic_authenticate_with name: "bears", password: "bears"

  def index
    @bears = Bear.all
  end



end
