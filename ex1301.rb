# Studentクラスのインスタンスを複数表示するプログラム

# Studentクラスを作る
class Student
  # Studentクラスのインスタンスを初期化する
  def initialize( name, age )
    @name = name
    @age = age
  end

  # Studentクラスのインスタンスの文字列表現を返す
  def to_s
    "#@name, #@age"
  end
end

# 新しいハッシュを作成し、Studentのクラスのインスタンスを複数作る
students = {
  :shin        => Student.new("Shin Kuboaki", 45),
  :shinichirou => Student.new("shinichirou Ooba", 35),
  :shingo      => Student.new("Shingo Katori", 30)
}

# 全てのインスタンスの名前と年齢を表示する
students.each { |key,value|
  puts "#{key} #{value.to_s}"
}
