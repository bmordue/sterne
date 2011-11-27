require 'spec_helper'

describe "planets/index.html.erb" do
  before(:each) do
    assign(:planets, [
      stub_model(Planet,
        :player_id => 1,
        :locationX => 1,
        :locationY => 1,
        :manufacturing => 1,
        :growth => 1,
        :research => 1,
        :population => 1,
        :science => 1,
        :name => "Name"
      ),
      stub_model(Planet,
        :player_id => 1,
        :locationX => 1,
        :locationY => 1,
        :manufacturing => 1,
        :growth => 1,
        :research => 1,
        :population => 1,
        :science => 1,
        :name => "Name"
      )
    ])
  end

  it "renders a list of planets" do
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
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
