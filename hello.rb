=begin
print "hello world"
puts "hello world" #改行が付く
#p "hello world" #デバッグ（値の種別も表示してくれる）
=end

=begin
beginとendで囲んだ範囲は、
全部コメントアウトできる。
改行がいくらあっても
反映されないよ☆
=end

#ちなみに"#"は1行だけコメントアウトできる

#変数
#英小文字or"_"で始めないといけない

#msg = "hello world".length #lengthは文字数をカウントする
#puts msg

#変数は書き換えすることができる

#msg = "hello world again".reverse #reverseは文字を反転する
#puts msg

#定数
#英大文字で始めないといけない

#VERSION = 1.1.round #四捨五入
#puts VERSION

#VERSION = 1.2
#puts VERSION #定数だと上書きしてしまうとアラートが出るが、出力されてしまう。

#VERSION2 = 1.2.floor
#puts VERSION2

##p 2.0 / 4 + 3.0 / 5
##p Rational(2, 4) + Rational(3, 5) #Rationalは分数
##p 2/4r + 3/5r #rはRationalの短縮形
##p 10 % 3

##p 2.53.round #roundは四捨五入
##p 2.53.floor #floorは切り下げ
##p 2.53.ceil #ceilは切り上げ

##p 2.42.round
##p 2.42.floor
##p 2.42.ceil

#文字列
# ""は記号や数式展開ができる
# ''はそのまま表示する

#puts "hell\no wor\tld"
#puts 'hell\no wor\tld'

#puts "価格 #{570000 * 90}"
#puts '価格 #{570000 * 90}'

#name = "ヘンデス\=グレテル"
#puts "あなたの名前は　#{name}　ですね\？"
#puts "ようこそ！#{name}！！\n"

# + * "+"は文字列を足す。"*"は文字列を繰り返し表示させる
#puts "そういえば、、、" + "#{name}さんって、早口言葉みたいですね。"
#puts "#{name}、" * 20

# !
# upcase　文字列を大文字に変換して表示
# upcase! 破壊的なメソッド（元の文字列自体を大文字に上書きしてしまう。）
# downcase（小文字に変換して表示） や reverse（反転して表示） なども!が付けられる代表例
# name = "yamada3"
#puts name.upcase
#puts name

#puts name.upcase!
#puts name

#puts name.downcase
#puts name
#puts name.downcase!
#puts name

#puts name.reverse
#puts name
#puts name.reverse!
#puts name


# ? 真偽値 true false を返します。
#name = "yamada3"
# name = ""
#p name.empty?

#p name.include?("g")
#p name.include?("d")

# 配列
=begin
colors = ["red","blue","green"]

#p colors[0]
#p colors[-1]
#p colors[0..2]
#p colors[0...2]
#p colors[7]

colors[0] = "pink"
colors[1..2] = ["white","black"]
colors.push("gold")
colors << "silver" # << は　pushの短縮形
p colors

p colors.size
p colors.sort

=end

# ハッシュ
# key / value がセットになる
#例えば
# taguchi 200
# himeno 150

=begin
score = {"taguchi" => 200, "himeno" => 150} #基本形
score = {:taguchi => 200, :himeno => 150} #短縮形
score = {taguchi: 200, himeno: 150} #高速短縮形

p score[:taguchi]
score[:himeno] = 300
p score

p score.size # sizeは値の個数
p score.keys # keysはkeyの一覧
p score.values # valuesは値の一覧
p score.has_key?(:taguchi) # has_key?は指定したkeyがあるか確認（keyの指定は:key）
p score.has_value?(300) # has_value?は指定した値があるか確認
p score.keys[1]
p score.keys[0]
=end

=begin
# 変換 to_ホニャララ

x = 60
y = "3"

p x + y.to_i # to_iは整数にする
p x + y.to_f # to_fは小数点付きにする
p x.to_s + y # to_sは文字列にする

scores = {taguchi: 200, mirai: 135}

p scores.to_a # to_aはkeyとvalueのセットに変換。
p scores.to_a.to_h # to_hハッシュに変換。
p scores
=end

=begin
# % で""や''が省ける

puts "he\"llo"
puts 'he\'llo'

puts %Q(he"llo) # ""の中に"を入れたり
puts %(he"llo)
puts %q(he'llo) # ''の中に'を入れる時に見やすい

# 配列も""や''を省ける

p ["red","blue"]
p ['red','blue']

p %W(red blue) # 値が多い場合に便利
puts %w(red blue)
=end

=begin
# %を使ってkeyにvalueを突っ込む
#例.1 key"大根"にvalue"150"を入れる

p "大根: %d" % 150 # %dで整数、%fで浮動小数点数、%sで文字
p "大根: %10d" % 150 #10桁分の幅を取って代入
p "大根: %-10d" % 150 #10桁分の幅を取って左詰めで代入

#例.2 5桁のIDで前半は0で埋め、valueは浮動小数点数でかつ全体10桁で小数点以下2桁にする場合。

p "id: %05d ,rate: %10.2f" % [355,263.443]

printf("id: %05d, rate: %10.2f\n", 355, 263.443)
=end
=begin
# ifで条件分岐
# 演算子 > < >= <= == !=
# 論理演算子 &&(and) ||(or) !(not)
puts "テスト何点だった？"
score = gets.to_i

if score > 80 then
    puts "Great\!\!"
elsif score >60 then
    puts "Good\!"
else
    puts "so so...cry"
end

# thenは省略可能


#条件分岐が二択の場合はこんな書き方もできます。
puts "すっげぇ\^\^\;" if score > 90


# case で条件分岐

signal = gets.chomp # chompは改行コード取り外し

case signal
when "red"
    puts "止まれ\!"
when "green", "blue" # 条件はカンマ区切りで複数指定可能！
    puts "進め"
when "yellow"
    puts "注意\!"
else
    puts "間違ってない\?"
end


puts "テスト何点だったか教えろよww"

score = gets.to_i

case score
when  91..100; puts "天才\!\!"
when  61..90; puts "なかなか"
else puts "大丈夫か\!\?"
end

=end

=begin
# 繰り返し
# while

i = 0

while i < 10 do
    puts "#{i}: hello"
    # i = i + 1
    i += 1
end


#times

10.times do |i|
    puts "#{i}: hello"
end


10.times { |i| puts "#{i}: hello" }

=end

=begin
# for each

for i in 15..20
    p i
end

for color in ["red", "blue", "black"]
    p color
end

for name, price in {potato: 150, 大根:130}
    puts "#{name}: #{price}"
end

# each

(15..20).each { |i| p i }

 ["red", "blue", "black"].each { |color| p color }

{potato: 150, 大根:130}.each { |name, price| puts "#{name}: #{price}" }

# loop
#  ループはbreakとnextなどをセットで使う


i = 0
loop { p i; i += 1 } #これだと無限にループしてしまう。


i = 0
loop { p i; i += 1; break if i == 7 } # iが7になるとループを抜ける。


i = 0
loop { p i; i += 1; break if i == 3 } # iが3になるとループを抜ける。

=end








