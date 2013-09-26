class Message

  include ActiveModel::Validations
  include ActiveModel::Conversion
  extend ActiveModel::Naming

  attr_accessor :name, :email, :body, :nickname

  validates :name, :email, :body, :presence => true
  validates :email, 
            :format => { :with => /\b[A-Z0-9._%a-z\-]+@(?:[A-Z0-9a-z\-]+\.)+[A-Za-z]{2,4}\z/ }
  validates :nickname, 
            :format => { :with => /\A\z/ }

  def initialize(attributes = {})
    attributes.each do |name, value|
      send("#{name}=", value)
    end
  end

  def persisted?
    false
  end

end