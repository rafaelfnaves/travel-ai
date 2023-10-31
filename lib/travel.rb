require './lib/services/open_ai_service'
require './lib/utils/prompt_util'

class Travel
  def with_dates(start_date, end_date)
    @start_date = start_date
    @end_date = end_date
    self
  end

  def from(origin)
    @origin = origin
    self
  end

  def to(destination)
    @destination = destination
    self
  end

  def plan!
    {
      travel_itinerary: travel_itinerary,
      weather: weather,
      violence_info: violence_info,
      best_way: best_way
    }
  end

  private

  def travel_itinerary
    prompt = Utils::Prompt.itinerary_text(@destination, @start_date, @end_date)
    OpenAiService.new.call(prompt)
  end

  def weather
    prompt = Utils::Prompt.weather_text(@destination, @start_date)
    OpenAiService.new.call(prompt)
  end
  
  def violence_info
    prompt = Utils::Prompt.violence_text(@destination)
    OpenAiService.new.call(prompt)
  end

  def best_way
    prompt = Utils::Prompt.best_way_text(@origin, @destination)
    OpenAiService.new.call(prompt)
  end
end