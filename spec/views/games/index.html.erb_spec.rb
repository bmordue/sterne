require 'spec_helper'

describe "games/index.html.erb" do
  before(:each) do
    assign(:games, [
      stub_model(Game,
        :universe_id => 1
      ),
      stub_model(Game,
        :universe_id => 1
      )
    ])
  end

  it "renders a list of games" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
