#!/usr/bin/ruby1.9.3
require "rubygems"
require "crystalscad"
require "require_all"
include CrystalScad

require_all "lib/**/*.rb"

# To run this project and refresh any changes to the code, run the following command
# in a terminal (make sure you are in the same directory as this file): 
#  observr bodymelt_shape.observr
#
# This will generate bodymelt_shape.scad which you can open in OpenSCAD.
# In OpenSCAD make sure that you have the menu item
# Design -> Automatic Reload and Compile 
# activated. 
 

res = Bodymelt_shapeAssembly.new.show

res.save("bodymelt_shape.scad","$fn=64;")

@@bom.save("bom.txt")

