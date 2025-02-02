require 'soby' 

# Give the current folder to Processing.
Processing::App::SKETCH_PATH = __FILE__

$app =  SobyPlayer.new 800, 600  if $app == nil

if $app.ready? 

  ## Presentation - relative elements
  $:.unshift File.dirname(__FILE__)

  load 'artik.rb'

  file = "licences.svg"
  licences_prez = Presentation.new($app, $app.sketchPath(file))
  $app.licences_prez = licences_prez

  file = "architecture.svg"
  architecture_prez = Presentation.new($app, $app.sketchPath(file))
  $app.architecture_prez = architecture_prez

  $app.set_prez architecture_prez
end 

