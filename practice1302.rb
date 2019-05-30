# Machoクラスのインスタンスを複数表示するプログラム(最終盤)

# Machoクラスを作る
class Macho
  # Machoクラスのインスタンスを初期化する
  def initialize( name, age )
    @name = name
    @age = age
  end

  # Machoクラスのインスタンスの文字列表現を返す
  def to_s
    "#{@name}, #{@age}"
  end
end

# MachoBookアプリケーションのインスタンスを作る
class MachoBook
  def initialize
    @machoes = {}
  end

# ハッシュにMachoクラスのインスタンスを複数作成する
def setUpMachoes
  @machoes = {     # machoesをインスタンス変数に変更
    :Schwarzenegger　=> Macho.new("Arnold Alois Schwarzenegger", 71),
    :Stallone => Macho.new("Sylvester Gardenzio Stallone", 72),
    :Willis => Macho.new("Walter Bruce Willis", 64),
    :Statham => Macho.new("Jason Statham", 51),
  }
end

# 全てのインスタンスの名前と年齢を表示する
# 処理を手続きにする
def printMachoes
  @machoes.each { |key,value|   # studentsをインスタンス変数に変更
    puts "#{key} #{value.to_s}"
  }
end

# MachoBookが保持しているデータをリストする
  def listAllMachoes
    # Machoクラスのインスタンスの作成
    setUpMachoes
    # Machoクラスのインスタンスの表示
    printMachoes
  end
end

# MachoBookクラスのインスタンスを作成する
macho_book = MachoBook.new

# Machoクラスのインスタンスの表示
macho_book.listAllMachoes
