filename = ARGV.first

def sections_as_key_values(text, re)
    text = text.strip

    keys = text.scan(re).reject { |value| value.empty? }

    values = text.split(re).reject { |value| value.empty? }

    raise "keys and values don't match" unless keys.size == values.size

    keys.each_with_index.map { |key, index| { :key => key, :value => values[index] } }
end

markdown = File.read(filename)

start = markdown.index("## ")

head = markdown[0..start-1]

markdown = markdown[start..-1]

sections = sections_as_key_values(markdown, /^## .*/)

File.open(filename, "w") do |file|
    file.puts(head)

    sections.each do |section|
        subsections = sections_as_key_values(section[:value], /^### .*/).sort { |a,b| a[:key] <=> b[:key] }

        file.puts(section[:key])

        subsections.each do |subsection|
            file.write(subsection[:key])
            file.write(subsection[:value])
        end
    end
end
