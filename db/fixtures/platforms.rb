
require 'csv'

csv = CSV.read('db/fixtures/platforms.csv')
csv.each_with_index do |platform, i|

	if i == 0
		next
	end

  id = platform[0]
  name = platform[1]

  Platform.seed(:id) do |s|
    s.id = id
    s.name = name
  end

end