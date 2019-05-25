# 新しいハッシュを作る
# :~ ←この書き方はシンボルという

friends = {
  :shin => "Shin Kuboaki",
  :shinichirou => "Shinichirou Ooba",
  :shingo => "Shingo Katori"
}

# ハッシュの要素を１つずつ処理する
# 繰り返しの都度、キーをブロック内のローカル変数keyに渡す
friends.each_key { |key|
  # ローカル変数（キー）の値を表示する
  puts "#{key}"
}
