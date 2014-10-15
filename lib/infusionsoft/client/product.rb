module Infusionsoft
  class Client
    module Product
      def product_get_inventory(product_id)
        response = get('ProductService.getInventory', product_id)
      end
      
      def product_get_product(product_id)
        response = Infusionsoft.data_query("Product",1,0,{"Id" => product_id},[
          "BottomHTML", "CityTaxable", "CountryTaxable", "Description", "HideInStore",
          "Id", "InventoryLimit", "InventoryNotifiee", "IsPackage", "LargeImage",
          "NeedsDigitalDelivery", "ProductName", "ProductPrice", "Shippable",
          "ShippingTime", "ShortDescription", "Sku", "StateTaxable", "Status",
          "Taxable", "TopHTML", "Weight"
        ])
        response.any? ? response.first : nil
      end
    end
  end
end
