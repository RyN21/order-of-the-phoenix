class HouseResults
  def members_by_house(house)
    members = PotterService.new.characters_by_house(house)
  end

  def phoenix_members_of_house(house)
    PotterService.new.characters_by_house(house).find_all do |member|
      member[:orderOfThePhoenix]
    end
  end
end
