module StockPriceManipulating
  extend ActiveSupport::Concern
  
  included do
    attr_reader :ruleType # Rule type, buy or sell.
    attr_accessor :ruleId # rule id.

    #将价格调整成标准价格，向下调整
    def normalizePriceFloor(randomPrice)
      result=((randomPrice*100).floor)/100.0
    end #def normalizePriceFloor(randomPrice) #将价格调整成标准价格，向下调整

    #将价格调整成标准价格，向上调整
    def normalizePriceCeil(sellprice) 
      result=((sellprice*100).ceil)/100.0
    end # normalizePriceCeil(sellprice) #将价格调整成标准价格，向上调整
  end
end
