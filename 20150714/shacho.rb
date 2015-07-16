require_relative 'shain'
require_relative 'bumon'

shain = Shain.new("佐藤　太郎","埼玉県○△△")
shain2 = Shain.new("斎藤　次郎","神奈川県△××")
bumon = Bumon.new("営業部","東京都×××１階")
bumon.add(shain)
bumon.add(shain2)

shain.work()

bumon.work()

children = bumon.get_children()
children.each {|unit| unit.work}

bumon.work_all()
