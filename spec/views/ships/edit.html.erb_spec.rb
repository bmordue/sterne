require 'spec_helper'

describe "ships/edit.html.erb" do
  before(:each) do
    @ship = assign(:ship, stub_model(Ship,
      :player_id => 1,
      :locationX => 1,
      :locationY => 1,
      :destination => 1,
      :hitpoints => 1,
      :shiptype_id => 1
    ))
  end

  it "renders the edit ship form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => ships_path(@ship), :method => "post" do
      assert_select "input#ship_player_id", :name => "ship[player_id]"
      assert_select "input#ship_locationX", :name => "ship[locationX]"
      assert_select "input#ship_locationY", :name => "ship[locationY]"
      assert_select "input#ship_destination", :name => "ship[destination]"
      assert_select "input#ship_hitpoints", :name => "ship[hitpoints]"
      assert_select "input#ship_shiptype_id", :name => "ship[shiptype_id]"
    end
  end
end
