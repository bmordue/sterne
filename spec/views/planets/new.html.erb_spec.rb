require 'spec_helper'

describe "planets/new.html.erb" do
  before(:each) do
    assign(:planet, stub_model(Planet,
      :player_id => 1,
      :locationX => 1,
      :locationY => 1,
      :manufacturing => 1,
      :growth => 1,
      :research => 1,
      :population => 1,
      :science => 1,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new planet form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => planets_path, :method => "post" do
      assert_select "input#planet_player_id", :name => "planet[player_id]"
      assert_select "input#planet_locationX", :name => "planet[locationX]"
      assert_select "input#planet_locationY", :name => "planet[locationY]"
      assert_select "input#planet_manufacturing", :name => "planet[manufacturing]"
      assert_select "input#planet_growth", :name => "planet[growth]"
      assert_select "input#planet_research", :name => "planet[research]"
      assert_select "input#planet_population", :name => "planet[population]"
      assert_select "input#planet_science", :name => "planet[science]"
      assert_select "input#planet_name", :name => "planet[name]"
    end
  end
end
