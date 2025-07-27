class LoanRequest < ApplicationRecord
  validates :name, presence: true
  validates :email, presence: true
  validates :phone, presence: true, length: { minimum: 10, maximum: 15 }
  validates :loanAmount, presence: true, numericality: { greater_than: 0 }
  validates :collegeName, presence: true
end
