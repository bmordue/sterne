require 'spec_helper'

describe "ship_types/index.html.erb" do
  before(:each) do
    assign(:ship_types, [
      stub_model(ShipType,
        :name => "Name",
        :attack => 1,
        :defense => 1,
        :speed => 1
      ),
      stub_model(ShipType,
        :name => "Name",
        :attack => 1,
        :defense => 1,
        :speed => 1
      )
    ])
  end

  it "renders a list of ship_types" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
