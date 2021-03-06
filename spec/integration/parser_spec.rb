describe "parser" do
  it "ordered page visites from most views to less" do
    result = `ruby app/parser.rb spec/data/webserver.log -most_views`

    lines = result.lines
    expect(lines.size).to eq 3
    first_line = lines[0].split
    second_line = lines[1].split
    third_line = lines[2].split
    expect(first_line.size).to eq 3
    expect(first_line[0]).to eq "/help_page/1"
    expect(first_line[1]).to eq "3"
    expect(first_line[2]).to eq "visits"
    expect(second_line[0]).to eq "/home"
    expect(second_line[1]).to eq "2"
    expect(third_line[0]).to eq "/contact"
    expect(third_line[1]).to eq "1"
  end

  it "ordered page visites from most unique visits to less" do
      result = `ruby app/parser.rb spec/data/webserver.log -unique_views`

      lines = result.lines
      expect(lines.size).to eq 3
      first_line = lines[0].split
      second_line = lines[1].split
      third_line = lines[2].split
      expect(first_line.size).to eq 4
      expect(first_line[0]).to eq "/home"
      expect(first_line[1]).to eq "2"
      expect(first_line[2]).to eq "unique"
      expect(first_line[3]).to eq "views"
      expect([second_line[0], third_line[0]]).to match_array ["/help_page/1", "/contact"]
      expect([second_line[1], third_line[1]]).to match_array ["1", "1"]
    end
end
