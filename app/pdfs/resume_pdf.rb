
class ResumePdf < Prawn::Document
  def initialize(student)
    super()
    @student = student
  end