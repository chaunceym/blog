class Session 
  include ActiveModel::Model
  # attr_accessor 做了什么: 定义 @xxx, 调用方法 def xxx 获取, def xxx= 赋值xxx
  attr_accessor :email, :password, :user
  validates :email, presence: true
  validate :check_email, if: :email
  validates :password, presence: true

  validates_format_of :email, with: /.+@.+/, if: :email
  validates_length_of :password, minimum: 6, if: :password
  validate :email_password_match, if: Proc.new {|s| s.email.present? and s.password.present?}

  def check_email
    @user ||= User.find_by email: email
    if user.nil?
      errors.add :email, :not_found
    end
  end

  def email_password_match
    @user ||= User.find_by email: email
    if user and not user.authenticate(password)
      errors.add :password, :mismatch
    end
  end
end