# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'open-uri'
require 'nokogiri'

sum = []
currencies = ["bitcoin", "ethereum", "ripple"]

currencies.each do |name|
  url3 = "https://coinmarketcap.com/currencies/#{name}/historical-data/"

  html_cripto2 = open(url3).read
  html_docripto2 = Nokogiri::HTML(html_cripto2)

  newArray = []
  html_docripto2.search('.table tbody tr').each do |element|
    newArray << element.text.strip.split("\n")
    end

  newArray.each do |element|
    currency = Currency.new
    p "Foi criada a currency #{currencies}"
    currency.name = "#{name}"
    currency.date = element[0]
    currency.open = element[1].to_f
    currency.high = element[2].to_f
    currency.low = element[3].to_f
    currency.close = element[4].to_f
    currency.volume = element[5].to_f
    currency.MarketCap = element[6].to_f
    currency.save!
    p "Currency foi salvada"
    # currency.name = "#{currencies}"
    end
    sum = []
    teste = Currency.all

    teste.select do |try|
      sum << try.open if try.name == "ethereum"
    end
    # p mean(sum)
    p sum.sum
    p "Realmente ficando foda nesse assunto porra #{sum * 20}"
  # teste = Currency.all
  #   teste.select do |try|
  #     Currency.sum << try.open if try.name == "ethereum"
  #   end
  end

# ------------------------------------------------------------------------------
# MELHOR E MAIS COMPLETA TENTATIVA
# currencies = ["bitcoin", "ethereum", "ripple"]

# currencies.each do |currency|
#   url3 = "https://coinmarketcap.com/currencies/#{currency}/historical-data/"

#   html_cripto2 = open(url3).read
#   html_docripto2 = Nokogiri::HTML(html_cripto2)

#   newArray = []
#   html_docripto2.search('.table tbody tr').each do |element|
#     newArray << element.text.strip.split("\n")
#     end

#   newArray.each do |element|
#     p "Scraping #{currency}"
#     puts element[0]
#     # p element[1]
#     end
#   end

# ////////------------------------------------------------------------------------
# Tentativa 5 a melhor e mais completa
# url3 = "https://coinmarketcap.com/currencies/bitcoin/historical-data/"

# html_cripto2 = open(url3).read
# html_docripto2 = Nokogiri::HTML(html_cripto2)

# html_docripto2.search('.table tbody tr td').each_with_index do |element, index|
#   # puts element.text.strip
#   puts "index: #{index}  element: #{element.text.strip}"
#   case index
#   when 0..6
#     puts "oba oba"
#   when 7..13
#     puts "chama chama"
#   else
#     puts "Como fazer isso ir de 7 em 7?"
#   end
#   # puts element.value
# end
# -------------------------------------------------------------------------------

# Tentativa 8
# Objetivo de criar certinho as colunas do meu modelo

# url4 = "https://coinmarketcap.com/currencies/bitcoin/historical-data/"

# html_cripto3 = open(url4).read
# html_docripto3 = Nokogiri::HTML(html_cripto3)

# html_docripto3.search('.table tbody tr td').each_with_index do |element, index|
#   # puts element.text.strip
#   puts "index: #{index}  element: #{element.text.strip}"
#   if index == 0 && index == 6
#     puts "#{element} "
#   else
#     puts "Bom que ta rolando"
#   end

#   # puts element.value
# end

# -----------------------------------------------------------------------------
# Scraping base do WAGON!
# ingredient = 'chocolate'
# url = "http://www.letscookfrench.com/recipes/find-recipe.aspx?s=#{ingredient}"

# html_file = open(url).read
# html_doc = Nokogiri::HTML(html_file)

# html_doc.search('.m_titre_resultat a').each do |element|
#   puts element.text.strip
#   puts element.attribute('href').value
# end
# ------------------------------------------------------------------------------
# # # Tentiva 7
# estou tentando criar da melhor maneira as minhas colunas, tentei os metodos
# group_of e each_slice, mas ainda nao funcionou
# url3 = "https://coinmarketcap.com/currencies/bitcoin/historical-data/"

# html_cripto2 = open(url3).read
# html_docripto2 = Nokogiri::HTML(html_cripto2)

# html_docripto2.search('.table tbody tr td').each_with_index do |element, index|
  # puts element.text.strip
  # p index
  # manipulando = element.text.strip.class
  # p manipulando
  # element.to_a.in_groups_of(7) { |group| p group }
  # p element.each_slice(2).to_a # => [[1, 2, 3, 4], [5, 6]]
  # p element.css("table td[data-format-value]")
  # p element.to_a[0..15]
  # index.in_groups_of(7) { |group| p group }
  # puts element.value
# end

# /---------------------------------------------------------------------------

# Tentativa 4

# url2 = "https://coinmarketcap.com/currencies/bitcoin/historical-data/"

# html_cripto = open(url2).read
# html_docripto = Nokogiri::HTML(html_cripto)

# html_docripto.search('.table thead tr th').each do |element|
#   puts element.text.strip
# end
# html_docripto.search('.table tbody tr td').each do |element|
#   puts element.text.strip
#   # puts element.value
# end


# # Tentativa 3

# url2 = "https://coinmarketcap.com/currencies/bitcoin/historical-data/"

# html_cripto = open(url2).read
# html_docripto Nokogiri::HTML(html_cripto)

# html_doc.search('.padding-top-1x').each do |element|
#   puts element.text.strip
#   puts element.attribute('table td[data-format-value]').value
# end


# Tentativa 2

# url2 = "https://coinmarketcap.com/currencies/bitcoin/historical-data/"

# html_cripto = open(url2).read
# html_docripto Nokogiri::HTML(html_cripto)

# html_doc.search('.padding-top-1x table').each do |element|
#   puts element.text.strip
#   puts element.attribute('tr').value
# end




# Erro

# url2 = "https://coinmarketcap.com/currencies/bitcoin/historical-data/"

# html_cripto = open(url2).read
# html_docripto Nokogiri::HTML(html_cripto)

# html_doc.search('.text-left th').each do |element|
#   puts element.text.strip
#   puts element.attribute('th').value
# end
