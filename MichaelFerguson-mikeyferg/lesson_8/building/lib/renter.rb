class Renter
  # require 'pry'
  require 'faker'
  require_relative('apartment')

  attr_accessor :name, :credit_score, :salary

  def initialize(name, salary)
    @name = name
    @credit_score = 800
    @salary = comma_numbers(salary)
  end

  def to_s
      "The tenant #{name} makes $#{salary} and has a credit score of #{credit_score}."
  end

  def self.creator(num)
    num.times do
      name = Faker::Name.name
      salary = Random.rand(40000...500000)
      renter = Renter.new(name, salary)
      puts renter.name
      puts renter.salary
    end
  end
  def self.random_renter_generator
      name = Faker::Name.name
      salary = Random.rand(40000...500000)
      Renter.new(name, salary)
  end

  def comma_numbers(number, delimiter = ',')
  number.to_s.reverse.gsub(%r{([0-9]{3}(?=([0-9])))}, "\\1#{delimiter}").reverse
  end
end
