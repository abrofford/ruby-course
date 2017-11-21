class OhioStateGame

  def self.cross_out
    file = File.open("./osu_mi.txt", "r")
      f.each_line do |line|
        line.split.each do |word|
          word.split.each do |letter|
            case letter
            when "M" then "X"
            when "m" then "x"
            end
          end
        end
        p line
      end
    end
  end
end

OhioStateGame.cross_out
