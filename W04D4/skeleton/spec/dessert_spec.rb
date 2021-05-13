require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  subject(:dessert) {Dessert.new("cake", 5, "Lori")}
  let(:chef) { double("chef") }


  describe "#initialize" do
    it "sets a type" do 
      expect(dessert.type).to eq("cake")
    end 

    it "sets a quantity" do 
       expect(dessert.quantity).to eq(5)
    end 

    it "starts ingredients as an empty array" do 
      expect(dessert.ingredients).to eq([])
    end 

    describe "integer error" do 
      subject(:dessert) {Dessert.new("cake", "not_int", "Lori")}
      it "raises an argument error when given a non-integer quantity" do 
        expect {dessert.quantity}.to raise_error(ArgumentError)
      end 
    end 

  end

  describe "#add_ingredient" do
    it "adds an ingredient to the ingredients array" do
      dessert.add_ingredient("flour")
      expect(dessert.ingredients).to eq(["flour"])
    end

  end

  describe "#mix!" do
    it "shuffles the ingredient array"

  end

  describe "#eat" do
    it "subtracts an amount from the quantity" do 
      dessert.eat(3)
      expect(dessert.quantity).to eq(2)
    end 

    it "raises an error if the amount is greater than the quantity" do
      expect{dessert.eat(120)}.to raise_error("not enough left!")
    end
  end

  describe "#serve" do
    it "contains the titleized version of the chef's name" do 
      allow(chef).to receive(:titleize).and_return("Chef Lori")
      expect(dessert.serve).to eq("Lori has made 5 cakes!")
    end
  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in" 

  end
end
