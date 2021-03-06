require 'spec_helper'

describe "items/edit" do
  before(:each) do
    @item = assign(:item, stub_model(Item,
      :title => "MyString",
      :description => "MyString",
      :image => "MyString"
    ))
  end

  it "renders the edit item form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", admin_item_path(@item), "post" do
      assert_select "input#item_title[name=?]", "item[title]"
      assert_select "input#item_description[name=?]", "item[description]"
      assert_select "input#item_image[name=?]", "item[image]"
    end
  end
end
