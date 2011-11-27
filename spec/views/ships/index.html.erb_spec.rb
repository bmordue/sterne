require 'spec_helper'

describe "ships/index.html.erb" do
  before(:each) do
    assign(:ships, [
      stub_model(Ship,
        :player_id => 1,
        :locationX => 1,
        :locationY => 1,
        :destination => 1,
        :hitpoints => 1,
        :shiptype_id => 1
      ),
      stub_model(Ship,
        :player_id => 1,
        :locationX => 1,
        :locationY => 1,
        :destination => 1,
        :hitpoints => 1,
        :shiptype_id => 1
      )
    ])
  end

  it "renders a list of ships" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
