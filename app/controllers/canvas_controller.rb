class CanvasController < ApplicationController
  # GET /canvas
  def index
  end

  # POST /canvas
  def post
    @sr = params[:signed_request]

    # Validate the signed request was provided.
    raise "Signed request parameter required." if @sr.blank?()

    # TODO - Replace with environment key here.
    secret = "837961580268743231"

    # Construct the signed request helper
    srHelper = SignedRequest.new(secret,@sr)

    # Unsign the signed request.
    @canvasRequest = srHelper.unsign()
  end

end
