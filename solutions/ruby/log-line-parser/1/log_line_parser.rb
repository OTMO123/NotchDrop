class LogLineParser
  def initialize(line)
    @line = line
  end

  def message
    # Extracts the message part and trims whitespace
    @line.split(':', 2).last.strip
  end

  def log_level
    # Extracts the log level inside the brackets and converts to lowercase
    @line[/\[(.*?)\]/, 1].downcase
  end

  def reformat
    # Combines message and log level in the desired format
    "#{message} (#{log_level})"
  end
end
