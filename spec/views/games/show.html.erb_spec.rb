require 'spec_helper'

describe "games/show.html.erb" do
  before(:each) do
    @game = assign(:game, stub_model(Game,
      :universe_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
