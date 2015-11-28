require "faraday"
require "json"
require "pp"

module API
  module Ver1
    class Meals < Grape::API
      resource :meals do

        # GET /api/v1/meals
        get do
          Meal.all
        end

        # POST /api/v1/meals
        params do
          requires :image, type: String
          requires :user_id, type: String
        end
        post do
            begin
                result = {"data"=>[], "status"=>""}
                data = params[:image]
                decoded_image = Base64.decode64(data['data:image/jpeg;base64,'.length .. -1])

               # new_meal = Meal.create({
               #      user_id: params[:user_id],
               #      image: decoded_image
               #  })

               #  full_path = "#{Rails.root}" + "/public"+ new_meal.image.url
               # image_file = File.open(full_path, "r+b")

                client = Faraday.new(:url => "https://api.apigw.smt.docomo.ne.jp")
                res = client.post do |req|
                  req.url '/imageRecognition/v1/recognize?APIKEY=572e78732e47743935372e6a5838787961304446755a61467a654c564734346c7770376356797036636632&recog=food&numOfCandidates=5'
                  req.headers['Content-Type'] = 'application/octet-stream'
                  req.body = decoded_image #image_file.read
                end
                body = JSON.parse res.body
                body['candidates'].each do |candidate|
                   nutrition =  {"calorie" => 247, "protein"=> 4.5, "fat" => 15.8, "carbs"=> 21.7, "sodium"=> 100}

                   record = {"itemId" => candidate['itemId'], "itemName" => candidate['detail']['itemName'].slice(/\D+/).strip.gsub(/\(/,''), "maker" => candidate['detail']['maker'],"imageUrl" => candidate['imageUrl'],  "nutrition" => nutrition }
                    result["data"].push(record)
                end
                result["status"] = "OK"
            rescue => e
               result["status"] = "Error"
            end
            result

        end

      end
    end
  end
end