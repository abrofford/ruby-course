class OhioStateGame

  def self.cross_out
    bad_letters = ["m", "M"]
    File.open("./osu_mi.txt", "r") do |f|
      f.each_line do |line|
        line.split.each do |word|
          word.split.each do |letter|
            if bad_letters.include?(word)
              letter.replace "x"
            end
          end
        end
        p line
      end
    end
  end
end

OhioStateGame.cross_out
