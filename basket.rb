class Basket
	attr_reader :goods
	def initialize
		@goods = []
	end

	def 	discount(total_price)
		if total_price>=100
		  total_price*=0.95
		end

	end
		
	def	total
		total_price = 0
		@goods.each do |item|
			total_price += item.price.to_f
		end
		discount(total_price)
		total_price
	end

	
	
	def	display
	
		puts "\t\t\e[32m 欢迎光临“素衣”便利店 \e[0m"
		puts"\t   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
		@goods.each do |item|

			puts "\t\t#{item.name}\t\t #{item.price}"
		end
		puts " "
		puts "\t\t\t\t总价：#{total}"
		puts "\t\t\t\t谢谢惠顾！"
		puts"\t   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\n\n"
	end
	
end
