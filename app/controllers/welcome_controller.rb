require 'json'
class WelcomeController < ApplicationController
  def index
    file = File.read('/home/ubuntu/rahul-darshee/app/helpers/blessings.json')
    @blessings = JSON.parse(file)

    if !params.nil? and !params['welcome'].blank? and !params['welcome']['name'].blank?
      @blessings[params['welcome']['message']] = params['welcome']['name']
      File.write('/home/ubuntu/rahul-darshee/app/helpers/blessings.json', @blessings.to_json)
      params['welcome']['name'] = ''
      params['welcome']['message'] = ''
    end
  end

  def when_where
    file = File.read('/home/ubuntu/rahul-darshee/app/helpers/blessings.json')
    @blessings = JSON.parse(file)

    if !params.nil? and !params['welcome'].blank? and !params['welcome']['name'].blank?
      @blessings[params['welcome']['message']] = params['welcome']['name']
      File.write('/home/ubuntu/rahul-darshee/app/helpers/blessings.json', @blessings.to_json)
      params['welcome']['name'] = ''
      params['welcome']['message'] = ''
    end
  end

  def guest
    file = File.read('/home/ubuntu/rahul-darshee/app/helpers/blessings.json')
    @blessings = JSON.parse(file)

    if !params.nil? and !params['welcome'].blank? and !params['welcome']['name'].blank?
      @blessings[params['welcome']['message']] = params['welcome']['name']
      File.write('/home/ubuntu/rahul-darshee/app/helpers/blessings.json', @blessings.to_json)
      params['welcome']['name'] = ''
      params['welcome']['message'] = ''
    end
  end

  def gallery
    file = File.read('/home/ubuntu/rahul-darshee/app/helpers/blessings.json')
    @blessings = JSON.parse(file)

    if !params.nil? and !params['welcome'].blank? and !params['welcome']['name'].blank?
      @blessings[params['welcome']['message']] = params['welcome']['name']
      File.write('/home/ubuntu/rahul-darshee/app/helpers/blessings.json', @blessings.to_json)
      params['welcome']['name'] = ''
      params['welcome']['message'] = ''
    end
  end

  def blog
    file = File.read('/home/ubuntu/rahul-darshee/app/helpers/blessings.json')
    @blessings = JSON.parse(file)

    if !params.nil? and !params['welcome'].blank? and !params['welcome']['name'].blank?
      @blessings[params['welcome']['message']] = params['welcome']['name']
      File.write('/home/ubuntu/rahul-darshee/app/helpers/blessings.json', @blessings.to_json)
      params['welcome']['name'] = ''
      params['welcome']['message'] = ''
    end
  end

  def groom_bride
    file = File.read('/home/ubuntu/rahul-darshee/app/helpers/blessings.json')
    @blessings = JSON.parse(file)

    if !params.nil? and !params['welcome'].blank? and !params['welcome']['name'].blank?
      @blessings[params['welcome']['message']] = params['welcome']['name']
      File.write('/home/ubuntu/rahul-darshee/app/helpers/blessings.json', @blessings.to_json)
      params['welcome']['name'] = ''
      params['welcome']['message'] = ''
    end
  end
end
