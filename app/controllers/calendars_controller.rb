class CalendarsController < ApplicationController
  def index
    # @free = "boo"
     @free =
    [{"start" => Time.now,
      "end" => Time.now + 1.hour
      },
     {"start" => Time.now + 3.hour,
      "end" => Time.now + 4.hour}
    ].to_json
  end

  def create
    # render text: params.to_json
    desirable = params["data"].values.select do |dat|
      dat[:id].include? "new_event"
    end

    render text: desirable.to_json
  end

  def show

  end
end
