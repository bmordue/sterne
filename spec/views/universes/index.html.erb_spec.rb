require 'spec_helper'

describe "universes/index.html.erb" do
  before(:each) do
    assign(:universes, [
      stub_model(Universe,
        :turn => 1
      ),
      stub_model(Universe,
        :turn => 1
      )
    ])
  end

  it "renders a list of universes" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
