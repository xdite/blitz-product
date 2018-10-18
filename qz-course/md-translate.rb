Dir.glob("*.docx") do |my_text_file| # note one extra "*"
  filename = File.basename(my_text_file, ".docx")
  system "pandoc -f docx -t markdown '#{filename}.docx' > '#{filename}.md'"
end
