require 'spec_helper'

describe "ship_types/show.html.erb" do
  before(:each) do
    @ship_type = assign(:ship_type, stub_model(ShipType,
      :name => "Name",
      :attack => 1,
      :defense => 1,
      :speed => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
