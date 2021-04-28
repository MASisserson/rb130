require 'simplecov'
SimpleCov.start
require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!

require_relative '../cash_register.rb'
require_relative '../transaction'

class CashRegisterTest < MiniTest::Test
  def setup
    @register = CashRegister.new(100)
    @transaction_1 = Transaction.new(10)
    @transaction_1.amount_paid = 10
    @transaction_2 = Transaction.new(20)
    @transaction_2.amount_paid = 24
  end
  
  def test_accept_money
    money = @register.total_money
    assert_equal (money + 10), @register.accept_money(@transaction_1)
  end

  def test_change
    assert_equal 0, @register.change(@transaction_1)
    assert_equal 4, @register.change(@transaction_2)
  end

  def test_give_receipt
    assert_output("You've paid $#{@transaction_1.item_cost}.\n") do
      @register.give_receipt @transaction_1
    end
  end

  def test_prompt_for_payment
    input = StringIO.new("30\n")
  end
end
