class FootballTally
  STATS = {
    "Devastating Donkeys": {wins: 0, loss: 0, draw: 0, points: 0, matches_played: 0},
    "Allegoric Alaskans": {wins: 0, loss: 0, draw: 0, points: 0, matches_played: 0},
    "Blithering Badgers": {wins: 0, loss: 0, draw: 0, points: 0, matches_played: 0},
    "Courageous Californians": {wins: 0, loss: 0, draw: 0, points: 0, matches_played: 0}
  }

  def self.print
    File.open("./game_tally.txt", "r") do |f|
      f.each_line do |line|
        game = line.split(";")
        case game[0]
        when "Devastating Donkeys"
          calculate_stats(game)
        when "Allegoric Alaskans"
          calculate_stats(game)
        when "Blithering Badgers"
          calculate_stats(game)
        when "Courageous Californians"
          calculate_stats(game)
        end
      end
      p STATS
    end
  end

  def self.calculate_stats(game)
    if game[2].chomp == "win"
      STATS[:"#{game[0]}"][:points] += 3
      STATS[:"#{game[0]}"][:wins] += 1
      STATS[:"#{game[1]}"][:loss] += 1
      STATS[:"#{game[0]}"][:matches_played] += 1
      STATS[:"#{game[1]}"][:matches_played] +=1
    elsif game[2].chomp == "loss"
      STATS[:"#{game[0]}"][:points] += 0
      STATS[:"#{game[1]}"][:points] += 3
      STATS[:"#{game[0]}"][:loss] += 1
      STATS[:"#{game[1]}"][:wins] += 1
      STATS[:"#{game[0]}"][:matches_played] += 1
      STATS[:"#{game[1]}"][:matches_played] +=1
    elsif game[2].chomp == "draw"
      STATS[:"#{game[0]}"][:points] += 1
      STATS[:"#{game[1]}"][:points] += 1
      STATS[:"#{game[0]}"][:draw] += 1
      STATS[:"#{game[1]}"][:draw] += 1
      STATS[:"#{game[0]}"][:matches_played] += 1
      STATS[:"#{game[1]}"][:matches_played] +=1
    end
  end
end

FootballTally.print
