class ResumesController < ApplicationController

  def show
    @student = Unirest.get("http://localhost:3000/api/v2/students/1.json", :headers => {"Accept"=> "application/json"}).body
    respond_to do |format|
      format.html
      format.pdf do
        pdf = StudentPdf.new(@student)
        send_data pdf.render, filename: "Student#{@student['id']}.pdf",
                              type: "application/pdf",
                              disposition: "inline"
      end
    end   
  end

end
