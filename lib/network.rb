class Network
  attr_reader :name, :shows

  def initialize(name)
    @name = name
    @shows = []
  end

  def add_show(show)
    @shows << show
  end

  def main_characters
    @shows.flat_map do |show|
      show.main_characters_in_show
    end
  end

  def actors_by_show
    actors_in_show = Hash.new

    @shows.each do |show|
      actors_in_show[show] = show.characters.map(&:actor)
    end
    actors_in_show
  end

end
