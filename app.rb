require 'sinatra'

get '/' do
  redirect '/html_to_paginated_pdf.html'
end

get '/html_to_paginated_pdf.html' do
  erb :html_to_paginated_pdf
end

get '/html_to_paginated_pdf.pdf' do
  @uri = params[:uri]
  filename = "paginated_pdf-#{Time.now.to_i}.pdf"
  cmd = "wkhtmltopdf-amd64 -s letter -B 0 -T 0 -L 0 -R 0 --print-media-type #{@uri} #{filename}"
  `#{cmd}`
  file = File.open(filename, "rb")
  contents = file.read
  File.delete(filename)
  file.close

  content_type 'application/pdf'
  contents
end
