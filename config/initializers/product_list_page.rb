module LCBO
  class ProductListPage

    PER_PAGE=2000

    uri 'http://lcbo.com/lcbo-ear/lcbo/product/searchResults.do?' \
      'STOCK_TYPE_NAME=All&' \
      'ITEM_NAME=&KEYWORDS=&' \
      'ITEM_NUMBER=&' \
      'productListingType=&' \
      'LIQUOR_TYPE_SHORT_=Beer&' \
      'CATEGORY_NAME=*&' \
      'SUB_CATEGORY_NAME=*&' \
      'PRODUCING_CNAME=*&' \
      'PRODUCING_SUBREGION_N=&' \
      'PRODUCING_REGION_N=*&' \
      'UNIT_VOLUME=*&' \
      'SELLING_PRICE=*&' \
      'LTO_SALES_CODE=&' \
      'VQA_CODE=&KOSHER_CODE=&' \
      'VINTAGES_CODE=&' \
      'VALUE_ADD_SALES_CO=&' \
      'AIR_MILES_SALES_CO=&' \
      'SWEETNESS_DESCRIPTOR=&' \
      'VARIETAL_NAME=&' \
      'WINE_STYLE=&' \
      'language=EN&' \
      'style=+LCBO.css&' \
      'page={page}&' \
      'action=result&' \
      'sort=sortedName&' \
      'order=1&' \
      "resultsPerPage=#{PER_PAGE}"
  end
end
