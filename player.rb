module MathGame
  class Player

    attr_reader :name, :health, :max_health

    def initialize(name)
      @name = name
      @max_health = 3
      @health = @max_health
    end

    def wrong
      @health -= 1
    end

  end
end
