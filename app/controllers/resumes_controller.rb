class ResumesController < ApplicationController

  def show
    @student = Unirest.get("http://localhost:3000/api/v2/students/#{params[:id]}.json", :headers => {"Accept"=> "application/json"}, :parameters => params).body
    respond_to do |format|
      format.html
      format.json{render json: @student}
      format.pdf do
        pdf = ResumePdf.new(@student)

        send_data pdf.render, type: "application/pdf",
                              disposition: "inline"


      end
    end    
  end

end
