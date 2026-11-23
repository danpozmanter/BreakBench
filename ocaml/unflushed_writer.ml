let () =
  let report = open_out "/tmp/bb_report.txt" in
  output_string report "total=42\n"
