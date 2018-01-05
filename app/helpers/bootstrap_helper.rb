module BootstrapHelper
  IP_ADDRESS = '192.168.2.49:3000'
  # IP_ADDRESS = '127.0.0.1:3000'
  ACCESS_TOKEN = "CAACEdEose0cBAPZBwtIcAk3ZAnllP8IHaYvrZBL6etQmJgPKMbKmA66mDGozTOoQTssspUR5uIKuruv0rZBURHHRR7rwzZCSbaB4uFQ0xsCTV22EXRt2sWqvjNWdZBOGvYntEUZAIIvOnK6NZC8ZC9OZAg4Qpf5Dau2AICfZBEonS1Msz7OdPJTiQeA0r9qZCJ8V4WLBHGHNO0PAOe5WpyCYzrgZCz1Yg2cPc3LQZD"
  USER_ID = "100000867712264"

  def get_user_interests
    uid,access_token = fetch_cred
    url = "#{IP_ADDRESS}/users/interests?user_id=#{uid}&access_token=#{access_token}"
    p url
    response = RestClient.get(url)
    attractions_details = JSON.parse(response.body)['attractions']
    attractions = attractions_details.collect {|x| x['type']}
    descriptions, cities, images = [], [], []

    attractions_details.each do |attr|
      attr['data'].each do |x|
        descriptions << x['display_name']
        cities << x['city_detail']['city']
        if x['attraction_details']['url'].blank?
          images << x['city_detail']['cover_photo_url']
        else
          images << x['city_detail']['cover_photo_url']
        end
      end
    end
    # return attractions, descriptions, cities, images
    attractions_details
  end

  def get_the_hotels city
    fetch_cred
    response = RestClient.get("#{IP_ADDRESS}/hotels/#{city}")
    JSON.parse(response.body)['hotels']
  end

  def get_similar_places
    uid,access_token = fetch_cred
    response = RestClient.get("#{IP_ADDRESS}/users/similar_places?user_id=#{uid}&access_token=#{access_token}")
    JSON.parse(response.body)['similar_places']
  end

  def fetch_cred
    return session[:uid],session[:access_token]
  end
end
