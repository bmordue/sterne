require 'spec_helper'

describe "universes/show.html.erb" do
  before(:each) do
    @universe = assign(:universe, stub_model(Universe,
      :turn => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
