require 'atk_toolbox'

# for interacting with the user, use the Console object
#    answer = Console.yes?("do you like linux")
#    answer = Console.select("Who is your favorite?", ["Scorpion", "Kano", "Jax"])
#    answers = Console.multi_select("Select drinks?", ["vodka", "beer", "wine", "whisky", "bourbon"])
#    answer = Console.ask('What is your email?') do |q|
#      q.validate(/\A\w+@\w+\.\w+\Z/)
#      q.messages[:valid?] = 'Invalid email address'
#    end
#    there's a lot more options, see https://github.com/piotrmurach/tty-prompt for all the things you can do with a prompt!
#    the Console variable is a TTY::prompt so you don't need to do "prompt = TTY::prompt.new"

# for dealing with files, use the FS object
#     FS.download(url, to:location)
#     FS.copy(from:file, to:newplace, new_name: nil)
#     FS.move(from:file, to:newplace, new_name: nil)
#     FS.delete(file_or_folder) # caution will recursively delete a folder
#     FS.read(file_or_folder) # returns a string, returns nil if file doesn't exist
#     FS.write(string, to: filepath) # saves a string to a file, note: it overwrites existing files and creates paths if they dont exist yet
#     FS.home # the home directory
#     FS.username # the persons username
#     FS.exists?(file_or_folder)
#     FS.file?(filepath)
#     FS.folder?(folder)
#     FS.ls # list all the files and folders in the current working directory
#     FS.list_files
#     FS.list_folders
#     FS.extname(file) # gives you the '.rb' for 'install.rb'
#     cross_platform_filepath = "a_folder"/"subfolder"/"a_file" # it uses the divsion operator for strings
#     ENV["PYTHONPATH"] # gives you access to environment variables

# for running command line commands, use these
#     system("echo hello world")
#         # throws an error if the command fails
#         # sends stdout and stderr straight to the user
#         # returns the PID of that process
#     system("echo", "hello", "world")
#         # same as before, but now the arguments don't need to be escaped
#     system("echo", "hello", "world", out: File::NULL, err: File::NULL )
#         # same as before, but now there is no output shown to the user
#     -"echo hello"
#         # returns false if the command fails
#         # sends stdout and stderr straight to the user
#     value = `echo hello`
#         # returns the stdout (but not stderr)
#         # does not throw errors if command fails
#         # note! it includes a newline at the end. Use `echo hello`.chomp, if you don't want the newline
#     if you need stdin, stdout, and stderr
#         use Open3.capture3, see https://docs.ruby-lang.org/en/2.5.0/Open3.html#method-c-capture3
#         or Open3.popen3, see https://docs.ruby-lang.org/en/2.5.0/Open3.html#method-c-popen3
#     if you need to start processes in the background (and then wait on it)
#         look up Process.spawn(), see https://docs.ruby-lang.org/en/2.5.0/Process.html#method-c-spawn


# pick an operating system
if OS.is?('mac')

    puts "Now I can do my install stuff for mac here"
    -"which python3" || puts("you don't have python! :O ")

elsif OS.is?('linux')

    answer = Console.yes?("do you like linux")
    if answer
        puts "cool! me too"
        log "(this message only gets printed if Console.verbose == true) I think linux is one of the greatest projects of the modern era, so much of the world runs on linux"
    end

elsif OS.is?('windows')

    puts "Why are you running windows?"

end