class DocDownloadsController < ApplicationController

  def show
    @syllabus = Syllabus.find(params[:id])
  end

  def download
    path = Rails.root.join('app', 'views', 'doc_downloads', 'show.html.erb').to_s
    @syllabus = Syllabus.find(params[:id])
    template_string = File.open(path).read
    template = ERB.new(template_string)

    file = Htmltoword::Document.create template.result(binding), "syllabus.docx"
    send_file file.path
  end
end