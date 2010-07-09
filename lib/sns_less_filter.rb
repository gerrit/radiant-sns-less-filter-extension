require 'less'

class SnsLessFilter < StylesheetFilter
  filter_name 'Less'
  
  def filter(text)
    Less.parse(text)
  rescue Less::SyntaxError => e
    e.to_s
  end
end