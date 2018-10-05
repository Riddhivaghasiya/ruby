# require "pathname"
#
# def rec_path(path, file= false)
#   puts path
#   path.children.collect do |child|
#     if file and child.file?
#       child
#     elsif child.directory?
#       rec_path(child, file) + [child]
#     end
#   end.select { |x| x }.flatten(1)
# end
#
# # only directories
# Dir.chdir(folder) { Dir.glob("**/*").map {|path| File.expand_path(path) } }
# rec_path(Pathname.new(dir), false)
# # directories and normal files
# rec_path(Pathname.new(dir), true)

# require 'find'
# # puts"enter path:"
# # path=gets.chomp
# file_paths = []
# Find.find('home/riddhi-ubantu') do |path|
#   file_paths << path
#   if path =~ /.*\$/
# end
class Fileoperation
  def  method
     file =  file("/home/riddhi-ubantu/")
     fileList = file.list()
       for (name:fileList)
          puts name
       end
  end
end


















### puts"enter path:"
# path=gets.chomp
#
# files=Dir["File"]
# files.each do |file_name|
#   if!File.directory? file_name
#     puts file_name
#     File.open(file_name) do|file|
#       file.each_line do |line|
#         if line=~/banco1/
#           puts"found:#{line}"
#         end
#       end
#     end
end
