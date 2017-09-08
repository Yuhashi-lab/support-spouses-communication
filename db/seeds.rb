# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

w = Wife.find_or_create_by(email: 'wife@email.com', encrypted_password: 'wife_pass')
h = Hasband.find_or_create_by(email: 'hasband@email.com', encrypted_password: 'hasband_pass')
f = Family.create
w.family = f
h.family = f
Question.find_or_create_by(content: '質問1', category: 'before')

# 季節
BotMessage.find_or_create_by(message: '中秋の名月にはお月見団子を作りませんか？', target_start_date: '2017-09-20', target_end_date: '2017-09-26', child_min_months: 0, child_max_months: 47, url: 'http://www.hamamatsu-pippi.net/shiritai/blog/hint/docs/2015092300059/')
BotMessage.find_or_create_by(message: '9月20日～26日は動物愛護週間です。', target_start_date: '2017-09-20', target_end_date: '2017-09-30', child_min_months: 0, child_max_months: 47, url: 'http://www.hamamatsu-pippi.net/shiritai/ichioshi/mimiyori/docs/2015032500099/')
BotMessage.find_or_create_by(message: 'もうすぐ三連休ですね。子どもとお出かけしませんか？', target_start_date: '2017-09-01', target_end_date: '2017-09-15', child_min_months: 0, child_max_months: 47, url: 'http://www.hamamatsu-pippi.net/tsunagaru/kokyo/')
BotMessage.find_or_create_by(message: '子どもの紫外線対策をしましょう！',               target_start_date: '2017-09-01', target_end_date: '2017-09-15', child_min_months: 0, child_max_months: 47, url: 'http://www.hamamatsu-pippi.net/docs/2014021902180/')
BotMessage.find_or_create_by(message: '読書の秋ですね。図書館に行きませんか？', target_start_date: '2017-09-15', target_end_date: '2017-09-30', child_min_months: 0, child_max_months: 47, url: 'http://www.hamamatsu-pippi.net/shiritai/blog/hint/cat/dokusho/more.html')
BotMessage.find_or_create_by(message: '9月でも利用できるプールの情報です。', target_start_date: '2017-09-01', target_end_date: '2017-09-15', child_min_months: 7, child_max_months: 47, url: 'http://www.hamamatsu-pippi.net/shiritai/blog/odekake/docs/2017061500064/')
BotMessage.find_or_create_by(message: 'もうすぐ七五三ですね。準備は進めていますか？', target_start_date: '2017-09-15', target_end_date: '2017-09-30', child_min_months: 36, child_max_months: 47, url: 'http://www.hamamatsu-pippi.net/shiritai/ichioshi/mimiyori/docs/2014021900421/')
BotMessage.find_or_create_by(message: '秋のお出かけはどこに行く予定ですか？', target_start_date: '2017-09-01', target_end_date: '2017-09-16', child_min_months: 0, child_max_months: 47, url: 'http://www.hamamatsu-pippi.net/shiritai/ichioshi/interview/docs/2015100600126/')
BotMessage.find_or_create_by(message: 'スポーツの秋ですね。子どもの運動について考えてみましょう。', target_start_date: '2017-09-01', target_end_date: '2017-09-30', child_min_months: 0, child_max_months: 47, url: 'http://www.hamamatsu-pippi.net/shiritai/ichioshi/mimiyori/docs/2014021900322/')

# 子育て、健康
BotMessage.find_or_create_by(message: 'トイレットトレーニングは始めていますか？', target_start_date: '2017-09-01', target_end_date: '2017-12-31', child_min_months: 18, child_max_months: 30, url: 'http://www.hamamatsu-pippi.net/docs/2014021902128/')
BotMessage.find_or_create_by(message: '卒乳について考えていますか？', target_start_date: '2017-09-01', target_end_date: '2017-12-31', child_min_months: 12, child_max_months: 18, url: 'http://www.hamamatsu-pippi.net/docs/2014021902111/')
BotMessage.find_or_create_by(message: 'お母さんも検診に行きませんか？', target_start_date: '2017-09-01', target_end_date: '2017-12-31', child_min_months: 0, child_max_months: 47, url: 'http://www.hamamatsu-pippi.net/docs/2014021902166/')
BotMessage.find_or_create_by(message: 'バランスのよい食事をとれていますか？', target_start_date: '2017-09-01', target_end_date: '2017-12-31', child_min_months: 12, child_max_months: 47, url: 'http://www.hamamatsu-pippi.net/docs/2014021902135/')
BotMessage.find_or_create_by(message: '言葉を育てるためには・・・', target_start_date: '2017-09-01', target_end_date: '2017-12-31', child_min_months: 10, child_max_months: 47, url: 'http://www.hamamatsu-pippi.net/docs/2014021902159/')
BotMessage.find_or_create_by(message: '子どもの歯の健康を守りましょう！', target_start_date: '2017-09-01', target_end_date: '2017-12-31', child_min_months: 6, child_max_months: 47, url: 'http://www.hamamatsu-pippi.net/bunya/shika/')
BotMessage.find_or_create_by(message: '病気やけがをしたときのために緊急連絡先を確認しておきましょう。', target_start_date: '2017-09-01', target_end_date: '2017-12-31', child_min_months: 0, child_max_months: 47, url: 'http://www.hamamatsu-pippi.net/docs/2014021900681/')
BotMessage.find_or_create_by(message: '便色カードって知っていますか？', target_start_date: '2017-09-01', target_end_date: '2017-12-31', child_min_months: 0, child_max_months: 4, url: 'http://www.hamamatsu-pippi.net/docs/2014021900704/')
BotMessage.find_or_create_by(message: 'あなたの大切な赤ちゃんを乳幼児突然死症候群でなくさないために3つのお願いがあります。', target_start_date: '2017-09-01', target_end_date: '2017-12-31', child_min_months: 2, child_max_months: 6, url: 'http://www.hamamatsu-pippi.net/docs/2014021900698/')
BotMessage.find_or_create_by(message: '乳幼児医療費助成制度を活用しましょう。', target_start_date: '2017-09-01', target_end_date: '2017-12-31', child_min_months: 0, child_max_months: 47, url: 'http://www.hamamatsu-pippi.net/docs/2014022700044/')
BotMessage.find_or_create_by(message: '図書館に行ってみましょう！', target_start_date: '2017-09-01', target_end_date: '2017-12-31', child_min_months: 0, child_max_months: 47, url: 'http://www.hamamatsu-pippi.net/docs/2014022100189/')
BotMessage.find_or_create_by(message: 'お父さん、子育てを楽しんでいますか？', target_start_date: '2017-09-01', target_end_date: '2017-12-31', child_min_months: 0, child_max_months: 47, url: 'http://www.hamamatsu-pippi.net/shiritai/ichioshi/mimiyori/docs/2014021900391/')
BotMessage.find_or_create_by(message: '早めにワクチン接種のスケジュールを立てましょう。', target_start_date: '2017-09-01', target_end_date: '2017-12-31', child_min_months: 0, child_max_months: 18, url: 'http://www.hamamatsu-pippi.net/shiritai/ichioshi/mimiyori/docs/2016120900036/')
BotMessage.find_or_create_by(message: 'こんにちは赤ちゃん訪問事業では産後のママをサポートします。', target_start_date: '2017-09-01', target_end_date: '2017-12-31', child_min_months: 0, child_max_months: 4, url: 'http://www.hamamatsu-pippi.net/shiritai/ichioshi/hamamatsu/docs/2016070800028/')
BotMessage.find_or_create_by(message: '親子すこやか相談に行って子どもの成長を実感してみませんか？', target_start_date: '2017-09-01', target_end_date: '2017-12-31', child_min_months: 0, child_max_months: 47, url: 'http://www.hamamatsu-pippi.net/shiritai/ichioshi/hamamatsu/docs/2017060200040/')

# 健康診査・ワクチン接種
BotMessage.find_or_create_by(message: '4か月児健康診査で子どもの健康状態を確認しよう！', target_start_date: '2017-09-01', target_end_date: '2017-12-31', child_min_months: 3, child_max_months: 5, url: 'http://www.hamamatsu-pippi.net/shiritai/ichioshi/hamamatsu/docs/2017060200040/')
BotMessage.find_or_create_by(message: '10か月児健康診査で子どもの健康状態を確認しよう！', target_start_date: '2017-09-01', target_end_date: '2017-12-31', child_min_months: 9, child_max_months: 11, url: 'http://www.hamamatsu-pippi.net/docs/2014022600016/')
BotMessage.find_or_create_by(message: 'ヒブ（インフルエンザ菌b型）のワクチンを打ちましたか？', target_start_date: '2017-09-01', target_end_date: '2017-12-31', child_min_months: 2, child_max_months: 6, url: 'http://www.hamamatsu-pippi.net/docs/2014021900896/')
BotMessage.find_or_create_by(message: '小児用肺炎球菌のワクチンを打ちましたか？', target_start_date: '2017-09-01', target_end_date: '2017-12-31', child_min_months: 2, child_max_months: 6, url: 'http://www.hamamatsu-pippi.net/docs/2014021900902/')
BotMessage.find_or_create_by(message: 'B型肝炎のワクチンは打ちましたか？', target_start_date: '2017-09-01', target_end_date: '2017-12-31', child_min_months: 0, child_max_months: 11, url: 'http://www.hamamatsu-pippi.net/docs/2015081000038/')
BotMessage.find_or_create_by(message: '4種混合ワクチンは打ちましたか？', target_start_date: '2017-09-01', target_end_date: '2017-12-31', child_min_months: 3, child_max_months: 12, url: 'http://www.hamamatsu-pippi.net/docs/2014021900919/')
BotMessage.find_or_create_by(message: 'BCGのワクチンは打ちましたか？', target_start_date: '2017-09-01', target_end_date: '2017-12-31', child_min_months: 5, child_max_months: 8, url: 'http://www.hamamatsu-pippi.net/docs/2014021900926/')
BotMessage.find_or_create_by(message: '麻しん・風しん混合のワクチンは打ちましたか？', target_start_date: '2017-09-01', target_end_date: '2017-12-31', child_min_months: 12, child_max_months: 23, url: 'http://www.hamamatsu-pippi.net/docs/2014021900933/')
BotMessage.find_or_create_by(message: '水痘（水ぼうそう）のワクチンは打ちましたか？', target_start_date: '2017-09-01', target_end_date: '2017-12-31', child_min_months: 12, child_max_months: 15, url: 'http://www.hamamatsu-pippi.net/docs/2014072800107/')
BotMessage.find_or_create_by(message: '日本脳炎のワクチンは打ちましたか？', target_start_date: '2017-09-01', target_end_date: '2017-12-31', child_min_months: 6, child_max_months: 47, url: 'http://www.hamamatsu-pippi.net/docs/2014021900957/')
BotMessage.find_or_create_by(message: 'ポリオのワクチンは打ちましたか？', target_start_date: '2017-09-01', target_end_date: '2017-12-31', child_min_months: 3, child_max_months: 47, url: 'http://www.hamamatsu-pippi.net/docs/2014021900971/')
BotMessage.find_or_create_by(message: '1歳6ヶ月児健康診査で子どもの健康状態を確認しよう！', target_start_date: '2017-09-01', target_end_date: '2017-12-31', child_min_months: 18, child_max_months: 23, url: 'http://www.hamamatsu-pippi.net/docs/2014022100028/')
BotMessage.find_or_create_by(message: 'お子さんの歯の健康を守るために、2歳児歯科健康診査を受けましょう。', target_start_date: '2017-09-01', target_end_date: '2017-12-31', child_min_months: 24, child_max_months: 27, url: 'http://www.hamamatsu-pippi.net/docs/2014022100035/')
BotMessage.find_or_create_by(message: '3歳児健康診査で子どもの健康状態を確認しよう！', target_start_date: '2017-09-01', target_end_date: '2017-12-31', child_min_months: 36, child_max_months: 47, url: 'http://www.hamamatsu-pippi.net/docs/2014022100042/')

# 教室・講座
BotMessage.find_or_create_by(message: 'もぐもぐ元気っこ教室を知っていますか？', target_start_date: '2017-09-01', target_end_date: '2017-12-31', child_min_months: 7, child_max_months: 9, url: 'http://www.hamamatsu-pippi.net/docs/2014022100172/')
BotMessage.find_or_create_by(message: 'おいしく楽しく離乳食をはじめましょう！', target_start_date: '2017-09-01', target_end_date: '2017-12-31', child_min_months: 5, child_max_months: 5, url: 'http://www.hamamatsu-pippi.net/docs/2014022100165/')

MessageHistory.create(family: f, bot_message_id: 1)
