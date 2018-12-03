module Chargify
  class StatsParser < ActiveResource::Collection
    def initialize(parsed = {})
      @elements = [parsed['stats']]
    end
  end

  class Stats < Base
    self.format = :json
    self.collection_parser = StatsParser
  end
end