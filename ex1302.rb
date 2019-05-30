# Studentクラスのインスタンスを複数表示するプログラム(最終盤)

# Studentクラスを作る
class Student
  # Studentクラスのインスタンスを初期化する
  def initialize( name, age )
    @name = name
    @age = age
  end

  # Studentクラスのインスタンスの文字列表現を返す
  def to_s
    "#{@name}, #{@age}"
  end
end

# StudentBookアプリケーションのインスタンスを作る
class StudentBook
  def initialize
    @students = {}
  end

# ハッシュにStudentクラスのインスタンスを複数作成する
def setUpStudents
  @students = {     # studentsをインスタンス変数に変更
    :shin        => Student.new("Shin Kuboaki", 45),
    :shinichirou => Student.new("shinichirou Ooba", 35),
    :shingo      => Student.new("Shingo Katori", 30)
  }
end

# 全てのインスタンスの名前と年齢を表示する
# 処理を手続きにする
def printStudents
  @students.each { |key,value|   # studentsをインスタンス変数に変更
    puts "#{key} #{value.to_s}"
  }
end

# StudentBookが保持しているデータをリストする
  def listAllStudents
    # Studentクラスのインスタンスの作成
    setUpStudents
    # Studentクラスのインスタンスの表示
    printStudents
  end
end

# StudentBookクラスのインスタンスを作成する
student_book = StudentBook.new

# Studentクラスのインスタンスの表示
student_book.listAllStudents
