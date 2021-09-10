# クラス定義
class Team

  # インスタンスが持つ変数（値）
  attr_accessor :name, :win, :lose, :draw

  # インスタンスを初期化するための、特別なメソッド
  def initialize(team_name,win_number,lose_number,draw_number)
    self.name = team_name
    self.win = win_number
    self.lose = lose_number
    self.draw = draw_number
  end

  # インスタンスが持つメソッド（処理）
  def calc_win_rate
    self.win.to_f / (self.win.to_f + self.lose.to_f)
  end
  
  def show_team_result
    puts "#{self.name}の2020年の成績は#{self.win}勝#{self.lose}敗#{self.draw}分、勝率は#{self.calc_win_rate}です。"
  end
end

# インスタンスの生成と、変数への代入
Team_Giants = Team.new('Giants',67,45,8)
Team_Tigers = Team.new('Tigers',60,53,7)
Team_Dragons = Team.new('Dragons',60,55,5)
Team_BayStars = Team.new('BayStars',56,58,6)
Team_Carp = Team.new('Carp',52,56,12)
Team_Swallows = Team.new('Swallow',41,69,10)


# インスタンスの使用
Team_Giants.show_team_result
Team_Tigers.show_team_result
Team_Dragons.show_team_result
Team_BayStars.show_team_result
Team_Carp.show_team_result
Team_Swallows.show_team_result