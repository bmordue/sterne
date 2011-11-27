require 'spec_helper'

describe "ship_types/new.html.erb" do
  before(:each) do
    assign(:ship_type, stub_model(ShipType,
      :name => "MyString",
      :attack => 1,
      :defense => 1,
      :speed => 1
    ).as_new_record)
  end

  it "renders new ship_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => ship_types_path, :method => "post" do
      assert_select "input#ship_type_name", :name => "ship_type[name]"
      assert_select "input#ship_type_attack", :name => "ship_type[attack]"
      assert_select "input#ship_type_defense", :name => "ship_type[defense]"
      assert_select "input#ship_type_speed", :name => "ship_type[speed]"
    end
  end
end
