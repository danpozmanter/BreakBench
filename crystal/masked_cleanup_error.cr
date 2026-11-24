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
  ensure # CONTROL! rescue error
    report.close # CONTROL! begin; report.close; rescue IO::Error; end; raise error
  # CONTROL! else
    # CONTROL! report.close
  end
end

begin
  save
rescue error : IO::Error
  puts error.message
end
