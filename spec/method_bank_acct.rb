#Methods to be pasted in Classes

require "./class_bank_acct.rb"

describe BankAcct do

  it "is created with an opening balance and the name of the client" do
      acct = BankAcct.new(100, "Bubbi")
      expect(acct).to be_a(BankAcct)
  end
    
    
  it "can report it's balance" do
      acct = BankAcct.new(100, "Bubbi")
      expect(acct.bal).to eq(100)
  end
    
  it "can make deposits" do 
      acct = BankAcct.new(100, "Bubbi")
      acct.deposit(400)
      expect(acc.bal).to eq(500)
  end
    
  it "can make withdrawals" do
      acct = BankAcct.new(100, "Bubbi")
      acct.withdraw(50)
      expect(acct.bal).to eq(450)
    end
    
        
  it "can transfer funds to another bank account" do
      acct1 = BankAcct.new(450, "Bubbi")
      acct2 = BankAcct.new(5000, "Charli")
      acct2.transfer(200, acct1)
      expect(acct1.bal).to eq(650)
      expect(acct2.balance).to(4800)
  end

   
  it "has a minimum opening balance" do 
      expect {BankAcct.new(50, "Bubbi")}.to raise_error(ArgumentError)
  end
    
  it "allows the user to change the minimum balance" do
      BankAcct.min_bal(250)
      expect {BankAcct.new(20, "Bubbi")}.to raise_error(ArgumentError)
      expect {BankAcct.new(1000, "Charli")}.to_not raise_error(ArgumentError)
  end
end