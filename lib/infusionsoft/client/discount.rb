module Infusionsoft
  class Client
    module Discount
      
      def discount_get_order_total_discount(order_discount_id)
        response = get('DiscountService.getOrderTotalDiscount', order_discount_id)
      end
      
      def discount_add_order_total_discount(name, description, 
        apply_discount_to_commission, percent_or_amt, amt, pay_type)
        response = get('DiscountService.addOrderTotalDiscount', name, description,
          apply_discount_to_commission, percent_or_amt, amt, pay_type)
      end
      
      def discount_get_product_total_discount(product_discount_id)
        response = get('DiscountService.getProductTotalDiscount', product_discount_id)
      end
      
    end
  end
end
