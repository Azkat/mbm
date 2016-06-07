
require 'csv'

csv = CSV.read('db/fixtures/styles.csv')
csv.each_with_index do |style, i|

	if i == 0
		next
	end

  id = style[0]
  name = style[1]

  Style.seed(:id) do |s|
    s.id = id
    s.name = name
  end

end