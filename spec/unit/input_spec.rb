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

  describe "clean_arguments_for_file_read!" do
    context "when filename is an argument" do
      let(:arguments) { ["log_filename"] }

      context "when -most_views is an argument" do
        before { arguments << "-most_views" }

        it "only filename remains in arguments" do
          Input.new(arguments).clean_arguments_for_file_read!

          expect(arguments).to eq ["log_filename"]
        end
      end
    end
  end

  describe "each_line" do
    let(:argf) { double("argf") }

    it "reads input files lines" do
      allow(argf).to receive(:each_line)

      Input.new([], argf).each_line

      expect(argf).to have_received(:each_line).once
    end
  end
end
