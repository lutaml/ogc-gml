# frozen_string_literal: true

require "fileutils"

input_path = "gml.rb"

FILE_START_REGEX = /# --- (?<filename>.*) ---\n/
FILE_END_REGEX = /\n\n/
current_file_path = ""

FileUtils.mkdir_p "gml"

contents = File.read(input_path)

contents.split("\n\n\n").each do |text_block|
  match = text_block.match(FILE_START_REGEX)
  next unless match

  filename = match["filename"]
  current_file_path = "gml/#{filename}"
  puts "FILE STARTED #{current_file_path}"

  # puts text_block

  File.open(current_file_path, "w") do |file|
    file.puts(text_block)
  end
end
