require 'spec_helper'

describe Fruit do

  it { should belong_to :stair }

  describe "An apple" do # context in shoulda, Scenario in gherkin
    before do # setup in shoulda, Given/When in gherkin
      @apple = Apple.new(:name => 'Apple')
      @apple.save
    end

    it "should not be squishy" do # should in shoulda, Then in cucumber
      expect(@apple.squishy?).to be_true
    end

    it "should remember what class it is using STI" do
      apple = Fruit.find(@apple.id)
      expect(apple).to be

      expect(apple.class).to be(Apple)

      expect(apple).to eq(@apple)

      expect(apple.is_a?(Fruit)).to be_true
      expect(apple.class.ancestors).to include Fruit
    end
  end

  describe "A pear" do
    before do
      @pear = Pear.create(:name => 'Pear')
    end

    it "should be kinda squishy" do
      @pear.squishy?.should == false
      @pear.squishy?.should be_false
      @pear.squishy?.should eq(false)
    end

    it "should remember what class it is using STI" do
      pear = Fruit.find(@pear.id)
      pear.should_not be_nil
      pear.should_not == nil
      pear.should_not eq(nil)

      pear.class.should == Pear
      pear.class.should eq(Pear)

      pear.should == @pear
      pear.should eq(@pear)

      pear.is_a?(Fruit).should be_true
      pear.class.ancestors.should include Fruit
    end
  end

end
