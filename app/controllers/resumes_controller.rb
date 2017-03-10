class ResumesController < ApplicationController

  def show
    @resumePdf = Resume.find(params[:id])
    respond_to do |format|
      format.html
      format.pdf do
        pdf = ResumePdf.new(@resumePdf, view_context)
        send_data pdf.render, filename: 
      end
    end    
  end

end
