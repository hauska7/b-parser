class Sorter
  def initialize(input, output)
    @input = input
    @output = output
  end

  def sort_by_most_views
    result = {}
    result.default = 0
    @input.each_line do |line|
      page, ip = line.split
      result[page] = result[page] + 1
    end

    result.sort_by { |k, v| -v }.each do |page, views_count|
      @output.puts "#{page} #{views_count} visits"
    end
  end
end
