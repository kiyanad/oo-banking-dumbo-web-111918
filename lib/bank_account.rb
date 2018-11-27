require 'pry'

class BankAccount

attr_accessor :balance, :status
attr_reader :name
  def initialize(name, balance = 1000, status= "open")
    @name = name
    @balance = balance
    @status = status
  end

  def deposit(deposit)

    @balance += deposit
  end

  def display_balance
    return "Your balance is $#{@balance}."
  end

  def valid?
    #binding.pry
    if @status == "closed"
      return false
    end
    if @balance > 0
      return true
    else
      return false
    end
  end

  def close_account
    @status = "closed"
  end
  end
