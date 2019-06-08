require 'atk_toolbox'

pwd = Dir.pwd
# change to this file's location 
Dir.chdir __dir__

if OS.is?('mac')
    # install python3
    -"brew install python3"
    # add the certificates to prevent problems later
    -"python3 ./install_certificates.py"
    # TODO: ask about setting the default python command
end
# change back to the pwd path
Dir.chdir pwd