require_relative '../../config/application'

test_parsing = Parse.new("../db/data/sfbusinesses/businesses.csv")
test_parsing.parser
test_parsing.filter_by_postal_code
p @business_list_sorted_by_postal_code
