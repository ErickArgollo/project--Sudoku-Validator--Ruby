require_relative "../lib/validator"

valid = ["859612437", "723854169", "164379528", "986147352", "375268914", "241593786", "432981675", "617425893", "598736241"]

incomplete = ["859012437", "723854169", "164379528", "986147352", "375268914", "241593786", "432981675", "617425893", "598736241"]

invalid = ["859112437", "723854169", "164379528", "986147352", "375268914", "241593786", "432981675", "617425893", "598736241"]

describe Checker do
  describe "check_strings" do
    context "when is valid and complete" do
      subject(:checker) { described_class.new(valid) }
      it "return true" do
        expect(checker.check_strings).to eq(true)
      end
    end

    context "when is valid and incomplete" do
      subject(:checker) { described_class.new(incomplete) }
      it "return incomplete" do
        expect(checker.check_strings).to eq("incomplete")
      end
    end

    context "when is invalid" do
      subject(:checker) { described_class.new(invalid) }
      it "return incomplete" do
        expect(checker.check_strings).to eq(false)
      end
    end

  end
end
