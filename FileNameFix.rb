
files=Dir["content/Java-Code-Library/*.md"]
destDir="content/Java-Code-Library/"
files.each do |file|
	  rawJavaName = file.split('/')[2].strip;
	  title = rawJavaName[4..rawJavaName.size];
	  newFile = destDir+title;
	  
	  javaContent = File.open(file, "rb");
	  contents = javaContent.read;
	  
	  File.write(newFile, contents)
end
