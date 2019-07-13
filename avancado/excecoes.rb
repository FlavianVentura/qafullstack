begin

    file = File.open('./ola.txt')

    if file
        
        puts file.read
    end

rescue exception => e

    puts e.backtrace

end