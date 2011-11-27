require 'spec_helper'

describe "games/edit.html.erb" do
  before(:each) do
    @game = assign(:game, stub_model(Game,
      :universe_id => 1
    ))
  end

  it "renders the edit game form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => games_path(@game), :method => "post" do
      assert_select "input#game_universe_id", :name => "game[universe_id]"
    end
  end
end
