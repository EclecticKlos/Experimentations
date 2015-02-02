require_relative '../../config/application'

class Parse
  def initialize(file)
    @file = file
    @business_list = nil
    @sorted_ids = []
  end

  def parser
    @business_list if @business_list != nil
    @business_list = []

    CSV.foreach(@file) do |row|
      @business_list << {business_list: row[0], name: row[1], postal_code: row[5], latitude: row[6]}
      @business_list
    end
    @business_list
  end

  def filter_by_postal_code
    # puts @business_list
    @business_list.each_with_index do |values,index|
      if values[:postal_code] == "94103" || values[:postal_code] == "94105" || values[:postal_code] == "94107"
        @business_list_sorted_by_postal_code << values
      end
    end
    @business_list_sorted_by_postal_code
  end

end
