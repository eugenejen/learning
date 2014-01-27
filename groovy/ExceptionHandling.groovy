def openFile(fileName)
{ 
  new FileInputStream(fileName)
}

try
{ 
  openFile('ExceptionHandling.groovy1')
}
catch(FileNotFoundException ex)
{ 
  println "Oops: " + ex
}