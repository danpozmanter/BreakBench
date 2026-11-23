class Report
  def write(_text)
    raise IOError, "disk full"
  end

  def close
    raise IOError, "close failed"
  end
end

def save
  report = Report.new
  report.write("totals")
ensure
  report&.close
end

begin
  save
rescue IOError => e
  puts e.message
end
