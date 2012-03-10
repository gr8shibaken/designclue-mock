require 'rubygems'
require 'rmagick'

width=300
height=300

image = Magick::Image.read('1-1.jpg').first
image.crop!(Magick::CenterGravity,width,height)
image.write('1-1-square.jpg')


23.times do |i|
  image = Magick::Image.read("1-#{i+1}.jpg").first
  image.crop!(Magick::CenterGravity,width,height)
  image.write("1-#{i+1}-square.jpg")
end


15.times do |i|
  image = Magick::Image.read("2-#{i+1}.jpg").first
  image.crop!(Magick::CenterGravity,width,height)
  image.write("2-#{i+1}-square.jpg")
end

19.times do |i|
  image = Magick::Image.read("4-#{i+1}.jpg").first
  image.crop!(Magick::CenterGravity,width,height)
  image.write("4-#{i+1}-square.jpg")
end