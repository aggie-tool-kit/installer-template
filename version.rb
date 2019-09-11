# if your command uses --version and returns something 
# that contains a version number like 1.2.3 or 19.0.1
# then the following code will work automatically once you replace the command name
command_name = "your-command-here"
puts `#{command_name} --version`.sub(/[\s\S]*?(\d+\.\d+\.\d+)[\s\S]*/,'\1')