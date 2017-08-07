require "open-uri"
require "nokogiri"


def scrap
  puts "What are you searching on Etsy?"
  article = gets.chomp

  # 1. We get the HTML file thanks to open-uri
  file = open("https://www.etsy.com/search?q=#{article}")

  # 2. We build a Nokogiri document from this file
  doc = Nokogiri::HTML(file)

  # 3. We search every elements with class="card" in our HTML doc
  ideas = []
  doc.search(".card-meta-row")[2..22].each do |card|
    # 4. for each element found, we extract its title and print it
    ideas << card.text.strip
  end
  return ideas
end
