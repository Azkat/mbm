
require 'csv'

csv = CSV.read('db/fixtures/mixes.csv')
csv.each_with_index do |mix, i|

	if i == 0
		next
	end

  id = mix[0]
  title = mix[1]
  duration = mix[2]
  tracklist = mix[3]
  url = mix[4]
  account_id = mix[5]
  platform_id =mix[7]

  Mix.seed(:id) do |s|
    s.id = id
    s.title = title
    s.duration = duration
    s.tracklist = tracklist
    s.url = url
    s.account_id = account_id
    s.platform_id = platform_id
  end

end