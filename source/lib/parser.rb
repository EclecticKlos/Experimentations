require 'csv'

class Parse
  def initialize(file)
    @file = file
    @business_id = nil
    @sorted_ids = []
  end

  def parser
    @business_id if @business_id != nil
    @business_id = []

    CSV.foreach(@file) do |row|
      @business_id << {business_id: row[0], name: row[1], postal_code: row[5], latitude: row[6]}
      @business_id
    end
    @business_id
  end

  def filter_by_postal_code
    # puts @business_id
    @business_id.each_with_index do |values,index|
      if values[:postal_code] == "94103" || values[:postal_code] == "94105" || values[:postal_code] == "94107"
        @sorted_ids << values
      end
    end
    puts @sorted_ids
  end

end

test_parsing = Parse.new("../db/data/sfbusinesses/businesses.csv")
test_parsing.parser
test_parsing.filter_by_postal_code
