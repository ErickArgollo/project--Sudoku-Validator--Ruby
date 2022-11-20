require_relative "../lib/validator"

describe StringValidator do
  
  describe "#validate" do
    context "when line is valid" do 
      subject(:string_validator) { described_class.new("859612437") }
      it "return complete" do
       expect(string_validator.validate).to eq("complete")
      end
    end

    context "when line is invalid" do 
      subject(:string_validator) { described_class.new("859612430") }
      it "return complete" do
       expect(string_validator.validate).to eq("incomplete")
      end
    end

    context "when line is wrong" do 
      subject(:string_validator) { described_class.new("859612410") }
      it "return complete" do
       expect(string_validator.validate).to eq(false)
      end
    end
  end
end
