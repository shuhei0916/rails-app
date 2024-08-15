class MsgboardController < ApplicationController
  layout 'msgboard'
  
  def initialize
    super 
    begin
      @msg_data = JSON.parse(File.read("data.txt"))
    rescue
      @msg_data = Hash.new
    end
    @msg_data.each do |key,obj|
      if Time.now.to_i - key.to_i > 24*60*60 then
        @msg_data.delete(key)
      end
    end
    File.write("data.txt", @msg_data.to_json)
  end

  def index
  end

end

class MyData
  
end
