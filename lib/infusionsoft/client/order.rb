module Infusionsoft
  class Client
    module Order
      def order_place_order(contact_id, credit_card_id, pay_plan_id, product_ids,
          subscription_plan_ids, process_specials, promo_codes, 
          lead_affiliate_id, sale_affiliate_id)
        response = get('OrderService.placeOrder', contact_id, credit_card_id, pay_plan_id, product_ids,
          subscription_plan_ids, process_specials, promo_codes, 
          lead_affiliate_id, sale_affiliate_id)
      end
    end
  end
end
