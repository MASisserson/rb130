require 'simplecov'
SimpleCov.start
require 'minitest/autorun'
require 'minitest/reporters'
MiniTest::Reporters.use!

require_relative '../cash_register.rb'
require_relative '../transaction.rb'
require_relative 'suppress_ruby_output'

class TransactionTest < MiniTest::Test
  def setup
    @register = CashRegister.new(100)
    @transaction_1 = Transaction.new(10)
    @transaction_1.amount_paid = 10
    @transaction_2 = Transaction.new(20)
  end

  def test_prompt_for_payment
    payment = StringIO.new("20\n")
    output = StringIO.new
    # suppress_output { @transaction_2.prompt_for_payment(input: payment, output: output) }
    @transaction_2.prompt_for_payment(input: payment, output: output)
    assert_equal 20, @transaction_2.amount_paid
  end
end
