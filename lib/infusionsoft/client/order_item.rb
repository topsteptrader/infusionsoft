module Infusionsoft
  class Client
    module OrderItem
      def order_get_order_items order_id
        response = Infusionsoft.data_query("OrderItem",20,0,{"OrderId" => order_id},["Id","ItemDescription","OrderId","Qty","ProductId","PPU","ItemType"])
      end
    end
  end
end
