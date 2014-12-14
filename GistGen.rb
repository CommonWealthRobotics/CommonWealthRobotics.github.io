require 'gist'

files=Dir["java-examples/*.java"]
destDir="content/Java-Code-Library/"
Gist.login!

files.each do |file|
  rawJavaName = file.split('/')[2].strip
  step = rawJavaName.split('-')[0].strip.to_i
  newFile = destDir+rawJavaName.split(".java")[0].strip+".md"
  title = rawJavaName[4..rawJavaName.size-6].tr("-"," ")
  
  
  
  p newFile, title,step
  
  
  
end
