class ResumesController < ApplicationController

  def show
    # @resume = Unirest stuff
    respond_to do |format|
      format.html
      format.pdf do
        pdf = Prawn::Document.new
        pdf.text "Hello World from Prwan!!!"

        send_data pdf.render, type: "application/pdf",
                              disposition: "inline"


      end
    end    
  end

end
