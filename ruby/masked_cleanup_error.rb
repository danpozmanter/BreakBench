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
ensure # CONTROL! rescue IOError => e
  report&.close # CONTROL! begin; report&.close; rescue IOError; end; raise e
end

begin
  save
rescue IOError => e
  puts e.message
end
