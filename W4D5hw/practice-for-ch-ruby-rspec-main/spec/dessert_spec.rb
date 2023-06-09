require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  let(:chef) { double("chef") }
  let(:cake) { Dessert.new("cake", 10, chef)}

  describe "#initialize" do
    it "sets a type" do
      expect(cake.type).to eq("cake")
    end

    it "sets a quantity" do
      expect(cake.quantity).to eq(10)
    end

    it "starts ingredients as an empty array" do
      expect(cake.ingredients).to be_empty
    end


    it "raises an argument error when given a non-integer quantity" do
      expect{ Dessert.new("cake", "a lot", chef)}.to raise_error(ArgumentError)
    end
  end

  describe "#add_ingredient" do
    it "adds an ingredient to the ingredients array" do
      cake.add_ingredient("sugar")
      expect(cake.ingredients).to include("sugar")
    end
  end

  describe "#mix!" do
    it "shuffles the ingredient array" do
      # Dessert.new("cake", 10, chef)
      
      expect(cake.ingredients).to eq(cake.ingredients.shuffle!)
    end
      
  end

  describe "#eat" do
    it "subtracts an amount from the quantity" do
      cake.eat(5)
      expect(cake.quantity).to eq(5)
    end

    it "raises an error if the amount is greater than the quantity" do
      
      expect{cake.eat(15)}.to raise_error("that's too much")
    end
  end

  describe "#serve" do
    it "contains the titleized version of the chef's name" do
      expect(cake.serve).to eq("chef".capitalize)
    end
  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in" 
  end
end