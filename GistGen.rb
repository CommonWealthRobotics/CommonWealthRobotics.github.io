require 'gist'

files=Dir["java-examples/*.java"]
destDir="content/Java-Code-Library/"
Gist.login!

files.each do |file|
	  rawJavaName = file.split('/')[1].strip;
	  step = rawJavaName.split('-')[0].strip.to_i;
	  newFile = destDir+rawJavaName.split(".java")[0].strip+".md";
	  title = rawJavaName[4..rawJavaName.size-6].tr("-"," ");
	  
	  javaContent = File.open(file, "rb");
	  contents = javaContent.read;
	  
	  ret = Gist.gist(contents, :filename=>title.tr(" ","")+".java", :public=>true);
	  
	  
	  #<script src="https://gist.github.com/madhephaestus/ad697c4b87b18bb494f9.js"></script>
	  id=ret["id"] 
	  owner=ret["owner"]["login"]
	  gitsUrl = "<script src='https://gist.github.com/" +owner+"/"+id + ".js'></script>";
	  
	  content = "---"+\
				"\ntitle: "+title+\
				"\nstep: "+step.to_s+\
				"\nlayout: post"+\
				"\n---"+\
				"\n\n"+gitsUrl;
				
	  
	  File.write(newFile, content)
end
