class ResumesController < ApplicationController

  def show
    @resume = Resume.find(params[:id])
    respond_to do |format|
      format.html
      format.pdf do
        pdf = Resume.new(@resume, view_context)
        send_data pdf.render, filename: 
      end
    end    
  end

end
