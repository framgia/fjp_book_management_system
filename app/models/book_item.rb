class BookItem < ApplicationRecord
  before_save :default_values
  enum state: ["Ready", "Not ready"]

  belongs_to :book

  def default_values
    self.state ||= "Ready"
  end
end
