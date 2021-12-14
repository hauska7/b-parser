require_relative "../../app/sorter"
require_relative "../../app/input"

describe Sorter do
  describe "sort_by_most_views" do
    context "with null output" do
      let(:output) { double("output", puts: nil) }

      context "with example input" do
        before do
          ARGV.clear
          ARGV << "spec/data/webserver.log"
        end
        let(:input) { Input.new }

        it "sorts by most views" do
          result = Sorter.new(input, output).sort_by_most_views

          expect(result).to eq [["/help_page/1", 3], ["/home", 2], ["/contact", 1]]
        end
      end
    end
  end
end
