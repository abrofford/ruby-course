class Basketball

  def self.print
    stats = []
    File.open("./basketball.txt", "r") do |f|
      f.each_line do |line|
        result = line.split()
        stats << {name: result[0], win: result[1], loss: result[2], draw: result[3]}
      end
    end

    stats.each do |team|
      if team[:win] > "8" && team[:loss] < "5" && team[:draw] < "2"
        p team[:name]
      else stats.min_by()
        p team[:name]
      end
    end
  end
end

Basketball.print
