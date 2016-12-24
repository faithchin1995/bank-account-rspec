require "rspec"
require_relative "account"


describe Account do
 
 let(:acct_num) {Account.new("1234567890")}
 
  describe "#initialize" do
    it "returns an account object" do
      x = Account.new("0123456789")
      expect(x.class).to eq(Account)
    end
  end

  describe "#transactions" do
    it "gives specified starting balance" do
      expect(acct_num.transactions[0]).to eq(0)
    end
  end

  describe "#balance" do
    it "gives back balance" do

      y = Account.new("2345678910", 100)
      y.deposit!(100)
      expect(y.balance).to be(200)
    end
  end

  describe "#account_number" do
    it "shows the last 4 digits" do
      expect(acct_num.acct_number).to eq("******7890")
    end
  end

  describe "deposit!" do
    it "shows the balance after deposit" do

      z = Account.new("3456789012", 500)

      expect(z.deposit!(500)).to be(1000)
    end
  end

  describe "#withdraw!" do
    it "shows the balance after withdrawal" do

      y = Account.new("4567890123", 1000)

      expect(y.withdraw!(200)).to be(800)
    end
  end
end