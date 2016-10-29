require 'test_helper'

class ItemTest < ActiveSupport::TestCase
  test "the truth" do
    assert true
  end
  
  #TESTING ITEMS MANY TO MANY WITH CATEGORIES
  test "item has many categories" do
    itema = Item.take
    itema.categories << Category.all
    assert_equal itema.categories, Category.all
    assert_equal Category.take.items.take, itema
  end
  
  test "add the item to a list of categories" do  
    item = Item.first
    category = Category.first
    category.items << Item.second
    category.items << item
    
    assert_equal category.items.second, Item.second
    assert_equal category.items.first, item
  end
end
