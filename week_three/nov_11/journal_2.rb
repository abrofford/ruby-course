class JournalEntry
  attr_accessor :entry_title, :entry_content

  def initialize(entry_title, entry_content)
    @entry_title = entry_title
    @entry_content = entry_content
  end
end

class Journal
  attr_accessor :journal

  def initialize(journal)
    @journal = journal
  end

  def add_entry(entry)
    @journal << journal
  end

  def delete_entry(title)
    @journal.delete.each {|entry| entry_title == title}
  end

  def find_entry()
    @journal.each do |entry|
      if (journal.entry_title == title) && (journal.entry_content == content)
        puts "put something here"
      end
    end
  end
end

journal = Journal.new(title, content)
page  = JournalEntry.new(entry_title, entry_content)

puts "Welcome to Amanda's Journal"
loop do
  puts "What do you want to do today? (add / find / delete): "
  selection = gets.chomp
    if selection == "add"
      puts "Enter title:"
      title = gets.chomp
      puts "Enter content:"
      content = gets.chomp
      journal << page(journal.new(title, content))
    elsif selection == "find"
      puts "Enter title:"
      title = gets.chomp
      title.find_entry(title, content)
    else selection == "delete"
      puts "Enter title you wish to delete: "
      title = gets.chomp
      title.delete_entry
    end
end
