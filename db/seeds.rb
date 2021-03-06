h = Hasband.new(id: 100, email: 'bot@email.com', encrypted_password: 'bot_pass', password: "bot_pass", birthday: "2017-01-01", name: "bot")
h.save!
w = Wife.new(email: 'wife@email.com', encrypted_password: 'wife_pass', password: "wife_pass", birthday: "2017-01-01", name: "wife")
w.save!
h = Hasband.new(email: 'hasband@email.com', encrypted_password: 'hasband_pass', password: "hasband_pass", birthday: "2017-01-01", name: "hasband")
h.save!

f = Family.create
w.family = f
h.family = f
Child.find_or_create_by(name: '人', birthday: '2016-03-08', family_id: f.id)
Question.find_or_create_by(content: '質問1', category: 'before')
Question.find_or_create_by(content: '質問2', category: 'before')
Question.find_or_create_by(content: '質問3', category: 'before')
Question.find_or_create_by(content: '質問4', category: 'before')

# 季節
BotMessage.find_or_create_by(message_type: "pippi", message: '動物の絵を描きにいきましょう！', target_start_date: '2017-11-04', target_end_date: '2017-11-12', child_min_month: 0, child_max_month: 47, url: '<br /><a href="http://www.hamamatsu-pippi.net/calendar/docs/2017092600146/">http://www.hamamatsu-pippi.net/calendar/docs/2017092600146/</a>')
BotMessage.find_or_create_by(message_type: "pippi", message: 'そろそろ街並みも色づき始めましたね。紅葉を見に行きませんか？', target_start_date: '2017-11-10', target_end_date: '2017-11-20', child_min_month: 0, child_max_month: 47, url: '<br /><a href="http://www.hamamatsu-pippi.net/shiritai/blog/odekake/docs/2017092200049/">http://www.hamamatsu-pippi.net/shiritai/blog/odekake/docs/2017092200049/</a>')
BotMessage.find_or_create_by(message_type: "pippi", message: 'おうちの中も秋らしくしてみませんか？', target_start_date: '2017-11-01', target_end_date: '2017-12-30', child_min_month: 0, child_max_month: 47, url: '<br /><a href="http://www.hamamatsu-pippi.net/shiritai/blog/hint/docs/2017101200046/">http://www.hamamatsu-pippi.net/shiritai/blog/hint/docs/2017101200046/</a>')
BotMessage.find_or_create_by(message_type: "pippi", message: 'さつまいもたっぷり鬼まんじゅうを作りましょう！', target_start_date: '2017-09-01', target_end_date: '2017-12-30', child_min_month: 0, child_max_month: 47, url: '<br /><a href="http://www.hamamatsu-pippi.net/shiritai/blog/hint/docs/2014030318774/">http://www.hamamatsu-pippi.net/shiritai/blog/hint/docs/2014030318774/</a>')
BotMessage.find_or_create_by(message_type: "pippi", message: '読書の秋ですね。図書館に行きませんか？', target_start_date: '2017-09-15', target_end_date: '2017-12-30', child_min_month: 0, child_max_month: 47, url: '<br /><a href="http://www.hamamatsu-pippi.net/shiritai/blog/hint/cat/dokusho/more.html">http://www.hamamatsu-pippi.net/shiritai/blog/hint/cat/dokusho/more.html</a>')
BotMessage.find_or_create_by(message_type: "pippi", message: 'お休みの日は少し足を伸ばして県外に紅葉を見に行ってみてはどうでしょうか。', target_start_date: '2017-11-01', target_end_date: '2017-11-25', child_min_month: 0, child_max_month: 47, url: '<br /><a href="http://www.hamamatsu-pippi.net/shiritai/blog/odekake/docs/2017092500163/">http://www.hamamatsu-pippi.net/shiritai/blog/odekake/docs/2017092500163/</a>')
BotMessage.find_or_create_by(message_type: "pippi", message: 'ぐりとぐらのカステラを作って絵本の世界を体験しよう！', target_start_date: '2017-09-15', target_end_date: '2017-12-31', child_min_month: 12, child_max_month: 47, url: '<br /><a href="http://www.hamamatsu-pippi.net/shiritai/blog/hint/docs/2014030318354/">http://www.hamamatsu-pippi.net/shiritai/blog/hint/docs/2014030318354/</a>')
BotMessage.find_or_create_by(message_type: "pippi", message: '秋のお出かけはどこに行く予定ですか？', target_start_date: '2017-09-01', target_end_date: '2017-12-30', child_min_month: 0, child_max_month: 47, url: '<br /><a href="http://www.hamamatsu-pippi.net/shiritai/ichioshi/interview/docs/2015100600126/">http://www.hamamatsu-pippi.net/shiritai/ichioshi/interview/docs/2015100600126/</a>')
BotMessage.find_or_create_by(message_type: "pippi", message: 'スポーツの秋ですね。子どもの運動について考えてみましょう。', target_start_date: '2017-09-01', target_end_date: '2017-11-30', child_min_month: 0, child_max_month: 47, url: '<br /><a href="http://www.hamamatsu-pippi.net/shiritai/ichioshi/mimiyori/docs/2014021900322/">http://www.hamamatsu-pippi.net/shiritai/ichioshi/mimiyori/docs/2014021900322/</a>')
BotMessage.find_or_create_by(message_type: "pippi", message: '体調管理をしっかりして子どもの病気を予防しましょう。', target_start_date: '2017-09-01', target_end_date: '2017-12-30', child_min_month: 0, child_max_month: 47, url: '<br /><a href="http://www.hamamatsu-pippi.net/news/2015102800074/">http://www.hamamatsu-pippi.net/news/2015102800074/</a>')

# 子育て、健康
BotMessage.find_or_create_by(message_type: "pippi", message: 'トイレットトレーニングは始めていますか？', target_start_date: '2017-09-01', target_end_date: '2017-12-31', child_min_month: 18, child_max_month: 30, url: '<br /><a href="http://www.hamamatsu-pippi.net/docs/2014021902128/">http://www.hamamatsu-pippi.net/docs/2014021902128/</a>')
BotMessage.find_or_create_by(message_type: "pippi", message: '卒乳について考えていますか？', target_start_date: '2017-09-01', target_end_date: '2017-12-31', child_min_month: 12, child_max_month: 18, url: '<br /><a href="http://www.hamamatsu-pippi.net/docs/2014021902111/">http://www.hamamatsu-pippi.net/docs/2014021902111/</a>')
BotMessage.find_or_create_by(message_type: "pippi", message: 'お母さんも検診に行きませんか？', target_start_date: '2017-09-01', target_end_date: '2017-12-31', child_min_month: 0, child_max_month: 47, url: '<br /><a href="http://www.hamamatsu-pippi.net/docs/2014021902166/">http://www.hamamatsu-pippi.net/docs/2014021902166/</a>')
BotMessage.find_or_create_by(message_type: "pippi", message: 'バランスのよい食事をとれていますか？', target_start_date: '2017-09-01', target_end_date: '2017-12-31', child_min_month: 12, child_max_month: 47, url: '<br /><a href="http://www.hamamatsu-pippi.net/docs/2014021902135/">http://www.hamamatsu-pippi.net/docs/2014021902135/</a>')
BotMessage.find_or_create_by(message_type: "pippi", message: '言葉を育てるためには・・・', target_start_date: '2017-09-01', target_end_date: '2017-12-31', child_min_month: 10, child_max_month: 47, url: '<br /><a href="http://www.hamamatsu-pippi.net/docs/2014021902159/">http://www.hamamatsu-pippi.net/docs/2014021902159/</a>')
BotMessage.find_or_create_by(message_type: "pippi", message: '子どもの歯の健康を守りましょう！', target_start_date: '2017-09-01', target_end_date: '2017-12-31', child_min_month: 6, child_max_month: 47, url: '<br /><a href="http://www.hamamatsu-pippi.net/bunya/shika/">http://www.hamamatsu-pippi.net/bunya/shika/</a>')
BotMessage.find_or_create_by(message_type: "pippi", message: '病気やけがをしたときのために緊急連絡先を確認しておきましょう。', target_start_date: '2017-09-01', target_end_date: '2017-12-31', child_min_month: 0, child_max_month: 47, url: '<br /><a href="http://www.hamamatsu-pippi.net/docs/2014021900681/">http://www.hamamatsu-pippi.net/docs/2014021900681/</a>')
BotMessage.find_or_create_by(message_type: "pippi", message: '便色カードって知っていますか？', target_start_date: '2017-09-01', target_end_date: '2017-12-31', child_min_month: 0, child_max_month: 4, url: '<br /><a href="http://www.hamamatsu-pippi.net/docs/2014021900704/">http://www.hamamatsu-pippi.net/docs/2014021900704/</a>')
BotMessage.find_or_create_by(message_type: "pippi", message: 'あなたの大切な赤ちゃんを乳幼児突然死症候群でなくさないために3つのお願いがあります。', target_start_date: '2017-09-01', target_end_date: '2017-12-31', child_min_month: 2, child_max_month: 6, url: '<br /><a href="http://www.hamamatsu-pippi.net/docs/2014021900698/">http://www.hamamatsu-pippi.net/docs/2014021900698/</a>')
BotMessage.find_or_create_by(message_type: "pippi", message: '乳幼児医療費助成制度を活用しましょう。', target_start_date: '2017-09-01', target_end_date: '2017-12-31', child_min_month: 0, child_max_month: 47, url: '<br /><a href="http://www.hamamatsu-pippi.net/docs/2014022700044/">http://www.hamamatsu-pippi.net/docs/2014022700044/</a>')
BotMessage.find_or_create_by(message_type: "pippi", message: '図書館に行ってみましょう！', target_start_date: '2017-09-01', target_end_date: '2017-12-31', child_min_month: 0, child_max_month: 47, url: '<br /><a href="http://www.hamamatsu-pippi.net/docs/2014022100189/">http://www.hamamatsu-pippi.net/docs/2014022100189/</a>')
BotMessage.find_or_create_by(message_type: "pippi", message: 'お父さん、子育てを楽しんでいますか？', target_start_date: '2017-09-01', target_end_date: '2017-12-31', child_min_month: 0, child_max_month: 47, url: '<br /><a href="http://www.hamamatsu-pippi.net/shiritai/ichioshi/mimiyori/docs/2014021900391/">http://www.hamamatsu-pippi.net/shiritai/ichioshi/mimiyori/docs/2014021900391/</a>')
BotMessage.find_or_create_by(message_type: "pippi", message: '早めにワクチン接種のスケジュールを立てましょう。', target_start_date: '2017-09-01', target_end_date: '2017-12-31', child_min_month: 0, child_max_month: 18, url: '<br /><a href="http://www.hamamatsu-pippi.net/shiritai/ichioshi/mimiyori/docs/2016120900036/">http://www.hamamatsu-pippi.net/shiritai/ichioshi/mimiyori/docs/2016120900036/</a>')
BotMessage.find_or_create_by(message_type: "pippi", message: 'こんにちは赤ちゃん訪問事業では産後のママをサポートします。', target_start_date: '2017-09-01', target_end_date: '2017-12-31', child_min_month: 0, child_max_month: 4, url: '<br /><a href="http://www.hamamatsu-pippi.net/shiritai/ichioshi/hamamatsu/docs/2016070800028/">http://www.hamamatsu-pippi.net/shiritai/ichioshi/hamamatsu/docs/2016070800028/</a>')
BotMessage.find_or_create_by(message_type: "pippi", message: '親子すこやか相談に行って子どもの成長を実感してみませんか？', target_start_date: '2017-09-01', target_end_date: '2017-12-31', child_min_month: 0, child_max_month: 47, url: '<br /><a href="http://www.hamamatsu-pippi.net/shiritai/ichioshi/hamamatsu/docs/2017060200040/">http://www.hamamatsu-pippi.net/shiritai/ichioshi/hamamatsu/docs/2017060200040/</a>')

# 健康診査・ワクチン接種
BotMessage.find_or_create_by(message_type: "pippi", message: '4か月児健康診査で子どもの健康状態を確認しよう！', target_start_date: '2017-09-01', target_end_date: '2017-12-31', child_min_month: 3, child_max_month: 5, url: '<br /><a href="http://www.hamamatsu-pippi.net/shiritai/ichioshi/hamamatsu/docs/2017060200040/">http://www.hamamatsu-pippi.net/shiritai/ichioshi/hamamatsu/docs/2017060200040/</a>')
BotMessage.find_or_create_by(message_type: "pippi", message: '10か月児健康診査で子どもの健康状態を確認しよう！', target_start_date: '2017-09-01', target_end_date: '2017-12-31', child_min_month: 9, child_max_month: 11, url: '<br /><a href="http://www.hamamatsu-pippi.net/docs/2014022600016/">http://www.hamamatsu-pippi.net/docs/2014022600016/</a>')
BotMessage.find_or_create_by(message_type: "pippi", message: 'ヒブ（インフルエンザ菌b型）のワクチンを打ちましたか？', target_start_date: '2017-09-01', target_end_date: '2017-12-31', child_min_month: 2, child_max_month: 6, url: '<br /><a href="http://www.hamamatsu-pippi.net/docs/2014021900896/">http://www.hamamatsu-pippi.net/docs/2014021900896/</a>')
BotMessage.find_or_create_by(message_type: "pippi", message: '小児用肺炎球菌のワクチンを打ちましたか？', target_start_date: '2017-09-01', target_end_date: '2017-12-31', child_min_month: 2, child_max_month: 6, url: '<br /><a href="http://www.hamamatsu-pippi.net/docs/2014021900902/">http://www.hamamatsu-pippi.net/docs/2014021900902/</a>')
BotMessage.find_or_create_by(message_type: "pippi", message: 'B型肝炎のワクチンは打ちましたか？', target_start_date: '2017-09-01', target_end_date: '2017-12-31', child_min_month: 0, child_max_month: 11, url: '<br /><a href="http://www.hamamatsu-pippi.net/docs/2015081000038/">http://www.hamamatsu-pippi.net/docs/2015081000038/</a>')
BotMessage.find_or_create_by(message_type: "pippi", message: '4種混合ワクチンは打ちましたか？', target_start_date: '2017-09-01', target_end_date: '2017-12-31', child_min_month: 3, child_max_month: 12, url: '<br /><a href="http://www.hamamatsu-pippi.net/docs/2014021900919/">http://www.hamamatsu-pippi.net/docs/2014021900919/</a>')
BotMessage.find_or_create_by(message_type: "pippi", message: 'BCGのワクチンは打ちましたか？', target_start_date: '2017-09-01', target_end_date: '2017-12-31', child_min_month: 5, child_max_month: 8, url: '<br /><a href="http://www.hamamatsu-pippi.net/docs/2014021900926/">http://www.hamamatsu-pippi.net/docs/2014021900926/</a>')
BotMessage.find_or_create_by(message_type: "pippi", message: '麻しん・風しん混合のワクチンは打ちましたか？', target_start_date: '2017-09-01', target_end_date: '2017-12-31', child_min_month: 12, child_max_month: 23, url: '<br /><a href="http://www.hamamatsu-pippi.net/docs/2014021900933/">http://www.hamamatsu-pippi.net/docs/2014021900933/</a>')
BotMessage.find_or_create_by(message_type: "pippi", message: '水痘（水ぼうそう）のワクチンは打ちましたか？', target_start_date: '2017-09-01', target_end_date: '2017-12-31', child_min_month: 12, child_max_month: 15, url: '<br /><a href="http://www.hamamatsu-pippi.net/docs/2014072800107/">http://www.hamamatsu-pippi.net/docs/2014072800107/</a>')
BotMessage.find_or_create_by(message_type: "pippi", message: '日本脳炎のワクチンは打ちましたか？', target_start_date: '2017-09-01', target_end_date: '2017-12-31', child_min_month: 6, child_max_month: 47, url: '<br /><a href="http://www.hamamatsu-pippi.net/docs/2014021900957/">http://www.hamamatsu-pippi.net/docs/2014021900957/</a>')
BotMessage.find_or_create_by(message_type: "pippi", message: 'ポリオのワクチンは打ちましたか？', target_start_date: '2017-09-01', target_end_date: '2017-12-31', child_min_month: 3, child_max_month: 47, url: '<br /><a href="http://www.hamamatsu-pippi.net/docs/2014021900971/">http://www.hamamatsu-pippi.net/docs/2014021900971/</a>')
BotMessage.find_or_create_by(message_type: "pippi", message: '1歳6ヶ月児健康診査で子どもの健康状態を確認しよう！', target_start_date: '2017-09-01', target_end_date: '2017-12-31', child_min_month: 18, child_max_month: 23, url: '<br /><a href="http://www.hamamatsu-pippi.net/docs/2014022100028/">http://www.hamamatsu-pippi.net/docs/2014022100028/</a>')
BotMessage.find_or_create_by(message_type: "pippi", message: 'お子さんの歯の健康を守るために、2歳児歯科健康診査を受けましょう。', target_start_date: '2017-09-01', target_end_date: '2017-12-31', child_min_month: 24, child_max_month: 27, url: '<br /><a href="http://www.hamamatsu-pippi.net/docs/2014022100035/">http://www.hamamatsu-pippi.net/docs/2014022100035/</a>')
BotMessage.find_or_create_by(message_type: "pippi", message: '3歳児健康診査で子どもの健康状態を確認しよう！', target_start_date: '2017-09-01', target_end_date: '2017-12-31', child_min_month: 36, child_max_month: 47, url: '<br /><a href="http://www.hamamatsu-pippi.net/docs/2014022100042/">http://www.hamamatsu-pippi.net/docs/2014022100042/</a>')

# 教室・講座
BotMessage.find_or_create_by(message_type: "pippi", message: 'もぐもぐ元気っこ教室を知っていますか？', target_start_date: '2017-09-01', target_end_date: '2017-12-31', child_min_month: 7, child_max_month: 9, url: '<br /><a href="http://www.hamamatsu-pippi.net/docs/2014022100172/">http://www.hamamatsu-pippi.net/docs/2014022100172/</a>')
BotMessage.find_or_create_by(message_type: "pippi", message: 'おいしく楽しく離乳食をはじめましょう！', target_start_date: '2017-09-01', target_end_date: '2017-12-31', child_min_month: 5, child_max_month: 5, url: '<br /><a href="http://www.hamamatsu-pippi.net/docs/2014022100165/">http://www.hamamatsu-pippi.net/docs/2014022100165/</a>')

# 呼びかけ
BotMessage.find_or_create_by(message_type: "compellation", message: 'ありがとうを伝えましょう')
BotMessage.find_or_create_by(message_type: "compellation", message: '今日はどんな日でしたか？パートナーに話してみましょう。')
BotMessage.find_or_create_by(message_type: "compellation", message: '一緒にテレビを見ませんか？')
BotMessage.find_or_create_by(message_type: "compellation", message: 'たまには一緒に外出しましょう。')
BotMessage.find_or_create_by(message_type: "compellation", message: 'お子さんができるようになったことはありませんか？喜びを共有しましょう。')
BotMessage.find_or_create_by(message_type: "compellation", message: '今困っていることがあったらパートナーに相談しましょう。')
BotMessage.find_or_create_by(message_type: "compellation", message: '家族と一緒にごはんを食べていますか？')
BotMessage.find_or_create_by(message_type: "compellation", message: '今日もいっぱいお子さんと遊べましたか？')
BotMessage.find_or_create_by(message_type: "compellation", message: '今日はお母さんもお父さんも一緒にお子さんと写真を撮りませんか？')
BotMessage.find_or_create_by(message_type: "compellation", message: 'お子さんのいいところをお互いに共有しましょう。')
BotMessage.find_or_create_by(message_type: "compellation", message: '今日がんばったことは何ですか？')
BotMessage.find_or_create_by(message_type: "compellation", message: 'お互いの好きなところを伝え合ってみましょう。')
BotMessage.find_or_create_by(message_type: "compellation", message: '今行きたいところはありませんか？TODOリストを使ってみましょう！')
BotMessage.find_or_create_by(message_type: "compellation", message: '今日のお子さんはどんな顔をしていますか？アルバム機能で共有しましょう。')
BotMessage.find_or_create_by(message_type: "compellation", message: 'お子さんとどんな遊びをしましたか？')
BotMessage.find_or_create_by(message_type: "compellation", message: 'あなたの趣味は何ですか？ふたりでしてみませんか？')
BotMessage.find_or_create_by(message_type: "compellation", message: 'おやすみを言う前に、今日あった良いことをパートナーと話してみましょう。')
BotMessage.find_or_create_by(message_type: "compellation", message: '心配なことはありませんか？')
BotMessage.find_or_create_by(message_type: "compellation", message: '泣いた顔でもいいんです。お子さんの今の顔を写真に撮って残しましょう。')
BotMessage.find_or_create_by(message_type: "compellation", message: '好きな食べ物は何ですか？一緒に食べにいきませんか？')
BotMessage.find_or_create_by(message_type: "compellation", message: '紅葉を見に行く予定を立てませんか？')
BotMessage.find_or_create_by(message_type: "compellation", message: 'お子さんにはどのように育ってほしいですか？ふたりで話し合ってみましょう。')
BotMessage.find_or_create_by(message_type: "compellation", message: 'どんな夫婦になりたいですか？')
BotMessage.find_or_create_by(message_type: "compellation", message: 'お子さんが生まれたときのことを振り返ってみましょう。')
BotMessage.find_or_create_by(message_type: "compellation", message: '子育てで大変だと思ったことはありませんか？パートナーと共有してみましょう。')
BotMessage.find_or_create_by(message_type: "compellation", message: '家事はうまく分担できていますか？')
BotMessage.find_or_create_by(message_type: "compellation", message: '自分の自由にできる時間があったら何がしたいですか？パートナーに聞いてみましょう。')
BotMessage.find_or_create_by(message_type: "compellation", message: 'ふたりで話す時間はありますか？')
