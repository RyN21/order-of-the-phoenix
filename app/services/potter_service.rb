class PotterService
  def houses
    response = conn.get('houses')
    json = JSON.parse(response.body, symbolize_names: true)
  end

  def characters_by_house(house)
    response = conn.get("characters?house=#{house}")
    json = JSON.parse(response.body, symbolize_names: true)
  end

  def charcter_by_id(id)
    response = conn.get("characters/#{id}")
    json = JSON.parse(response.body, symbolize_names: true)
  end

  def conn
    Faraday.new(url: 'https://www.potterapi.com/v1/') do |f|
      f.params['key'] = ENV['POTTER_API_KEY']
    end
  end
end
