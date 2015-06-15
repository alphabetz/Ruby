require "date"

class Report
  def initialize(ledger)
    @balance          = ledger.inject(0) { |sum, (k,v)| sum + v }
    @credits, @debits = ledger.partition { |k,v| v > 0 }
  end

  attr_reader :credits, :debits, :balance

  def formatted_output
    "\n"+
    "Current Balance: #{balance}\n\n" +
    "Credits:\n\n#{formatted_line_items(credits)}\n\n" +
    "Debits:\n\n#{formatted_line_items(debits)}"+
    "\n\n"
  end

  def formatted_line_items(items)
    items.map { |k, v| "#{k}: #{'%.2f' % v.abs}" }.join("\n")
  end
  
end

class EmailReport < Report

    def header
        "Dear Customer,\n\n"+
        "This is report of your activity on #{Date.today} \n"     
    end
    
    def banner
        "\n.....................................................\n"
    end
    
    def formatted_output
        header + banner + super + banner + footer
    end
    
    def footer
        "\nPlease check all acitivies and if something wrong please contact our support\n,"+
        "Alfie Wehr, General Manager Faceless Bank"
    end
end

ledger = [ ["Deposit Check #123", 500.15],
           ["Fancy Shoes",       -200.25],
           ["Fancy Hat",          -54.40],
           ["ATM Deposit",       1200.00],
           ["Kitteh Litteh",       -5.00] ]


report = EmailReport.new(ledger)
puts report.formatted_output
