

#INITALIZE RECORD COLLECTION
require 'sqlite3'

$db = SQLite3::Database.new("records.db")
$db.results_as_hash = true

create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS records(
    id INTEGER PRIMARY KEY,
    artist VARCHAR(255),
    album INT,
    speed INT
  )
SQL

$db.execute(create_table_cmd)


#METHODS FOR COLLECTION
def add_record(db, artist, album, speed)
  $db.execute("INSERT INTO records (artist, album, speed) VALUES (?, ?, ?)", [artist, album, speed])
end

def delete_record(album)
	$db.execute("DELETE FROM records WHERE album=(?)", [album])
end

def view_collection
	records = $db.execute("SELECT * FROM records")
	puts "Your collection of records is:"
	records.each do |record|
	puts "#{record['album']} by #{record['artist']} at #{record['speed']} RPM."
	end
end

#USER INTERFACE

loop do 
	puts "===================="
	puts "MY RECORD COLLECTION MK 1.0"
	puts "WHAT WOULD YOU LIKE TO DO?"
	puts "[VIEW], [ADD], [DELETE] [END]"
	puts "===================="
	input = gets.chomp.downcase

	case input
		when 'view'
			puts "===================="
			view_collection
			puts "===================="
		when 'add'
			puts "What is the artist?"
			artist = gets.chomp
			puts "What is the title of the album?"
			album = gets.chomp
			puts "What is the speed of the record[33 or 45] RPM?"
			speed = gets.chomp.to_i
			puts "COMMIT #{album} by #{artist} at #{speed} RPM to collection? [Y/N]"
			answer = gets.chomp.downcase
				case answer
					when 'y'
						add_record($db, artist, album, speed)
						puts "===================="
						puts "Adding record to collection."
						puts "===================="
					else
						puts "===================="
						puts "Canceling entry."
						puts "===================="
				end
		when 'delete'
			puts "What is the title of the album to be deleted?"
			album = gets.chomp
			delete_record(album)
		when 'end'
			break
	 	else
	 		puts "===================="
			puts "Please enter a valid entry."
			puts "===================="
	end
end


