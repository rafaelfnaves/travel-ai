module Utils
  class Prompt
    def self.itinerary_text(destination, start_date, end_date)
      "Estou viajando para #{destination} nos dias #{start_date} até #{end_date}. Por favor, me sugira um roteiro de viagem para cada dia."
    end

    def self.weather_text(destination, start_date)
      "Estou viajando para #{destination} no dia #{start_date}, geralmente como é o tempo na cidade nesta época do ano?"
    end

    def self.violence_text(destination)
      "Estou viajando para #{destination}. Como é a violência na cidade? Por favor, sugira dicas de segurança e com o que devo me preocupar."
    end

    def self.best_way_text(origin, destination)
      "Estou viajando de #{origin} para #{destination}. Qual a forma mais eficiente de chegar ao destino? Por favor, conceda meios e rotas alternativas."
    end
  end
end