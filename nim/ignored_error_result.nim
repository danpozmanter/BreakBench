proc save(path: string) =
  writeFile(path, "data")

save("/nonexistent/dir/out.txt")
echo "saved"
