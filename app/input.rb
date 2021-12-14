class Input
  def initialize(arguments = nil)
    @arguments = arguments || ARGV
  end

  def get_mode
    most_views = @arguments.any? { |arg| arg == "-most_views" }

    return "most_views" if most_views

    nil
  end
end
