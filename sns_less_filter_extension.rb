class SnsLessFilterExtension < Radiant::Extension
  version '1.0'
  extension_name 'Styles‘n’Scripts LESS Filter'
  description 'Enable LESS filtering of Stylesheets kept with the SnS-Extension'
  url 'http://lesscss.org/'
  
  def activate
    raise "The SnS Less Filter extension requires the Styles‘n’Scripts extension be available" unless defined?(SnsExtension)
    SnsLessFilter
  end
end
