# Class File for bank accounts
class BankAcct
    attr_reader :bal
    @@min_bal = 25
    
   def intialize (bal, acct_holder)
       if bal < @@min_bal
           raise ArguErr
       end
    
         @bal =  bal
       @user = acct_holder
   end
  
    def deposit(net_dep)
        @bal +=net_dep
    end

    def withdraw(net_dep)
        @bal -= net_dep
    end
    
    def transfer (net_dep, holder_acct)
        withdraw(net_dep)
        holder_acct.deposit(net_dep)
    end
    
    def self.min_bal(net_dep)
        @@min_bal = net_dep
    end
end
