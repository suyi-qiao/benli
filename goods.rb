require 'rubygems'
require 'highline/import'
require '/root/桌面/老师做的/goods_class.rb'
require '/root/桌面/老师做的/basket.rb'


def welcomeMessage
	puts"\t   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"     #输出欢迎信息                                                    			
	puts "\t\t\e[32m 欢迎光临“素衣”便利店 \e[0m"
	password = ask("\n\t\t 请输入口令继续:  ") { |q| q.echo = "*" }         
	
	if password.to_s=="89352"                                        #假设口令为89352 
	@continue=1        
	else
	@continue=0
	puts "\n\t\t 错误！非本店店员莫入"
	end
	puts"\t   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~" 
end

welcomeMessage()
	
goods_list = []
File.open("/root/桌面/老师做的/goods.txt").each_line do |line|
   goods_list << Goods.new(line)
end

basket = Basket.new

if @continue==1 
print "请输入要购买商品的编号(以N结束）："
input = gets.strip

   while(input!='N')
       selected = goods_list.find {|item| item.id == input }
       basket.goods << selected
       print selected.name,"     ",selected.price,"\n"

       print "请输入要购买商品的编号(以N结束）："
       input = gets.strip
   end

basket.display
end












