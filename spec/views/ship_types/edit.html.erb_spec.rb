require 'spec_helper'

describe "ship_types/edit.html.erb" do
  before(:each) do
    @ship_type = assign(:ship_type, stub_model(ShipType,
      :name => "MyString",
      :attack => 1,
      :defense => 1,
      :speed => 1
    ))
  end

  it "renders the edit ship_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => ship_types_path(@ship_type), :method => "post" do
      assert_select "input#ship_type_name", :name => "ship_type[name]"
      assert_select "input#ship_type_attack", :name => "ship_type[attack]"
      assert_select "input#ship_type_defense", :name => "ship_type[defense]"
      assert_select "input#ship_type_speed", :name => "ship_type[speed]"
    end
  end
end
