class Shoporder
    def initialize_program
      until
      puts "======================"
      puts "Welcome to my shop"
      puts "======================"
      puts ""
      puts "1. Create new order"
      puts "2. Print day Detail"
      puts "3. Print month Detail"
      puts ""
      puts "How may i help you?(1,2,3 or quit) "
      val = gets.chomp
      case val
      when "1"
         create_new_order
      when "2"
         display_day_detail
      when "3"
         display_month_detail
      when "q","quit"
      exit
      else
      puts"Enter your choice"
      end
      end
    end
    def execute
      @new_order={"2014" => {
                  "01" => {
                   "02" => [400,500,600],
                  },
                  "02" => {
                    "04" => [500,400]
                  },
                  "03" => {
                    "06" => [500]
                  },
                  "04"=>{
                    "08" => [700,800]
                  }
                 }
               }
    end

    def create_new_order
      puts "Enter a date and amount"
      total_amount=Array.new
      date,month,year,total_amount=gets.chomp.split(/[\-\s]/)
      if @new_order[year].nil?
        @new_order[year]={}
      end
      if @new_order[year][month].nil?
        @new_order[year][month] = {}
      end
      if @new_order[year][month][date].nil?
      @new_order[year][month][date] = []
      end
      @new_order[year][month][date] << amount.to_i
    end

    def display_day_detail
      total_amount = Array.new
      puts "Enter  date"
      year,month,date = gets.chomp
      if @new_order[year] && @new_order[year][month] && @new_order[year][month][date]
        total_amount = @new_order[year][month][date]
      end
      display_detail(total_amount)
    end

    def display_month_detail
      total_amount = Array.new
      puts "Enter  month and year"
      month,year=gets.chomp.to_i
      if @new_order[year] && @new_order[year][month]
        amount = @new_order[year][month].values
      end
      display_detail(total_amount)
    end

    def display_detail(total_amount)
      puts ""
      puts "Total Order : #{total_amount.count}"
      puts "Total Amount : #{total_amount.sum}"
      puts "Minimum order : #{total_amount.count > 0 ? total_amount.min : 0}"
      puts "Maximum order : #{total_amount.count > 0 ? total_amount.max : 0}"
      puts "Average order : #{total_amount.count > 0 ? total_amount.sum / total_amount.count : 0}"
      puts ""
    end
  end
  obj = Shoporder.new
  obj.initialize_program
