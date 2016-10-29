require 'test_helper'
require 'factory_girl'

class CategoryTest < ActiveSupport::TestCase
  test "the truth" do
   assert true
  end
  
  #TEST Ancestry
  test "set up a basic tree of categories" do
    root = Category.create! :name => "root", :order => 0
    mensClothes = Category.create! :name => "Men's Clothes", :order => 1, :parent => root
    originals = Category.create! :name => "Originals", :order => 2, :parent => root    
    mens_hats = Category.create! :name => "Men's Hat", :order => 1, :parent => mensClothes
    mens_shirts = Category.create! :name => "Men's Shirts", :order => 2, :parent => mensClothes
    original_hats = Category.create! :name => "Original Hats", :order =>1, :parent => originals
    
    assert root.has_children?
    assert root.root?
    assert mensClothes.has_siblings?
    assert original_hats.is_only_child?
    assert_equal mens_hats.parent, mensClothes
    assert_equal mensClothes.children.second, mens_shirts
  end
  
  #TEST many to many
  test "category has many categories" do
    categoryA = Category.take
    categoryA.items << Item.all
    assert_equal categoryA.items, Item.all
    assert_equal Item.take.categories.first, categoryA
  end
end
