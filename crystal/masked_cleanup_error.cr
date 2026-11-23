class Report
  def write(text)
    raise IO::Error.new("disk full")
  end

  def close
    raise IO::Error.new("close failed")
  end
end

def save
  report = Report.new
  begin
    report.write("totals")
  ensure
    report.close
  end
end

begin
  save
rescue error : IO::Error
  puts error.message
end
