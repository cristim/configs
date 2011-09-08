#!/usr/bin/ruby

# This script creates symlinks from /home to the configs in this directory
# The name of every config deployed through this method must begin with '_'
#

Dir.glob("_*").each{ |item|
  src = Dir.pwd + "/" + item
  dst = File.expand_path("~") + "/" + item.sub(/^\_/, ".")
  File.symlink(src, dst) unless File.symlink?(dst) 
}

