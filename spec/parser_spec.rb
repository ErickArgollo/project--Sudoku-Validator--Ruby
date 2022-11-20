require_relative "../lib/validator"

describe Parser do 
    subject(:parser) { described_class.new(File.read("spec/fixtures/valid_complete.sudoku")) }

    describe "#lines" do 
        expected = ['859612437', '723854169', '164379528', '986147352', '375268914', '241593786', '432981675', '617425893', '598736241']
        it "return lines" do 
            expect(parser.lines).to eq(expected)
        end
    end

    describe "#columns" do 
        expected = ["871932465", "526874319", "934651278", "683125947", "157469823", "249783156", "415397682", "362518794", "798246531"]
        it "return columns" do 
            expect(parser.columns).to eq(expected)
        end
    end

    describe "#groups" do 
        expected = ["859723164", "986375241", "432617598", "612854379", "147268593", "981425736", "437169528", "352914786", "675893241"]
        it "return groups" do 
            expect(parser.groups).to eq(expected)
        end
    end
end

