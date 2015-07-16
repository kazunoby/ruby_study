require_relative 'shain'
require_relative 'bumon'

company = Bumon.new("株式会社○○","東京都×××")
honsha = Bumon.new("本社","東京都×××")
eigyoubu = Bumon.new("営業部","東京都×××１階")
shain = Shain.new("佐藤　太郎","埼玉県○△△")
shain2 = Shain.new("斎藤　次郎","神奈川県△××")
jinjibu = Bumon.new("人事部","東京都×××２階")
shain3 = Shain.new("山田　三郎","東京都×○△")
shisha = Bumon.new("大阪支社","大阪府△△△")
eigyoubu2 = Bumon.new("営業部","大阪府△△△")
shain4 = Shain.new("鈴木　四郎","大阪府○×△")

company.add(honsha)

honsha.add(eigyoubu)
eigyoubu.add(shain)
eigyoubu.add(shain2)

honsha.add(jinjibu)
jinjibu.add(shain3)

company.add(shisha)

shisha.add(eigyoubu2)
eigyoubu2.add(shain4)

company.work()