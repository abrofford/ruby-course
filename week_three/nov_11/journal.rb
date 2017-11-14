class JournalEntry
  attr_accessor :entry_date, :entry_title

  def initialize(entry_date, entry_title)
    @entry_date = entry_date
    @entry_title = entry_title
  end
end

class Journal
  attr_accessor :journal

  def initialize(journal)
    @journal = entries
  end

  def add_entry(entry)
    @journal << entry
  end

  def delete_entry(entry)
    @journal.delete
  end

  def find_entry(entry_date, entry_title)
    @journal.each do |entry|
      if (journal.entry_date == entry_date) && (journal.entry_title == entry_title)
        puts "#{journal.entry_date} #{journal.entry_title}"
      end
    end
  end
end

journal = [Journal.new("11/11/2017", "Supper"), Journal.new("11/12/2017", "Excersise"), Journal.new("11/14/2017", "Date Night")]
find_entry = FindJournal.new(journal)

puts "Welcome to Amanda's Journal"
loop do
  puts "What do you want to do today? (add / find / delete): "
  selection = gets.chomp
    if selection == "add"
      puts "Enter today's date:"
      entry_date = gets.chomp
      puts "Enter entry title:"
      entry_title = gets.chomp
      journal << find_entry.add_entry(Journal.new(entry_date, entry_title))
    elsif selection == "find"
      puts "Enter date you want to view:"
      entry_date = gets.chomp
      puts "Enter title you want to view:"
      entry_title = gets.chomp
      find_entry.find(entry_date, entry_title)
    else selection == "delete"
      puts "Enter date you wish to delete: "
      entry_date = gets.chomp
      puts "Enter title you wish to delete:"
      entry_title = gets.chomp
      delete_entry.remove(entry_date, entry_title)
    end
end
