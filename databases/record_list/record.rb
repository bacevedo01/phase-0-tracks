
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
#db.execute("INSERT INTO records (artist, album, speed) VALUES ('The Beatles', 'White Album', 33)")


def add_record(db, artist, album, speed)
  $db.execute("INSERT INTO records (artist, album, speed) VALUES (?, ?, ?)", [artist, album, speed])
end

def delete_record(db, album)
	$db.execute("DELETE FROM records WHERE album=#{record[album]}")
end

def view_collection
	records = $db.execute("SELECT * FROM records")
	records.each do |record|
	puts "Your collection of records is:"
	puts "#{record['album']} by #{record['artist']} at #{record['speed']} RPM."
	end
end

view_collection
delect_record($db,"White Album")
view_collection
