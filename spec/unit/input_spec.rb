require_relative "../../app/input"

describe Input do
  describe "get_mode" do
    context "when -most_views is an argument" do
      let(:arguments) { ["-most_views"] }

      it "mode is most_views" do
        result = Input.new(arguments).get_mode

        expect(result).to eq "most_views"
      end
    end
  end
end
