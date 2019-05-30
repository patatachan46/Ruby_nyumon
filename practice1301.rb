# Machoクラスのインスタンスを複数表示するプログラム

# Machoクラスを作る
class Macho
  # Machoクラスのインスタンスを初期化する
  def initialize( name, age )
    @name = name
    @age = age
  end

  # Machoクラスのインスタンスの文字列表現を返す
  def to_s
    "#@name, #@age"
  end
end

# 新しいハッシュを作成し、Machoのクラスのインスタンスを複数作る
Machoes = {
  :Schwarzenegger　=> Macho.new("Arnold Alois Schwarzenegger", 71),
  :Stallone => Macho.new("Sylvester Gardenzio Stallone", 72),
  :Willis => Macho.new("Walter Bruce Willis", 64),
  :Statham => Macho.new("Jason Statham", 51),
}

# 全てのインスタンスの名前と年齢を表示する
Machoes.each { |key,value|
  puts "#{key} #{value.to_s}"
}
