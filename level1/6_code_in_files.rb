#^ 6. Code in files

# until now we were running the code directly in the console,
# which works fine when we need to just execute one line of code at a time.
# but often code is more complex than that, and editing and rerunning
# multiple lines of code in the console quickly becomes cumbersone.
# in these cases its better to just write the code in a file and then
# execute that file in the terminal use the `ruby` command

#~ exercise:
# -> create a file with .rb extension in your folder
# -> write some simple code in the file
# -> save the file -> ! always remember to save !
# -> execute the file in terminal with `ruby path/to/your_file.rb`
#    hint: `cd` to the folder where you have the file
#          and then just run `ruby your_file.rb`

# youve probably noticed that unlike in the console, youre now not getting
# the return value of your code. this is because you arent in the ruby console anymore,
# and there are extra steps required in order to output something into the terminal.

#* print / puts
# there are multiple ways how to get the output of your code,
# the most simple one is `print` and `puts`. they are essentialy the same,
# only difference is that `puts` will add a new line to your output.

puts 'print test:'
print 1
print 2

puts 'puts test:'
puts 1
puts 2

#~ exercise2:
# -> add some output to your file and run it again

# from here on every exercise should be/ done by writing the code in a file
# and then executing the file
