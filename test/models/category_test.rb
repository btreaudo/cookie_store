require 'test_helper'

class CategoryTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

    test "fields must not be empty" do
    category = Category.new
    assert_not category.save, "saved category with empty fields"
  end

    test "category name should be unique" do
    category = Category.new
    category.name = categories(:one).name
    assert_not category.save, "saved category with non-unique name"
  end

  test "category saves with all valid fields" do
    category = Category.new(name: "unique_brand")
    assert category.save, "category wasn't saved when valid fields were supplied"
  end
end
