Work.create do |a|
  a.id = 1
  a.name = '洗濯'
  a.rule = '柔軟剤を使う'
end

Report.create do |a|
  a.id = 1
  a.message = 'ガチでやった'
end

User.create do |a|
  a.id = 1
  a.name = '田中'
end
