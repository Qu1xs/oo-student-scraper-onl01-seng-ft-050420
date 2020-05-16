require 'open-uri'
require 'nokogiri'
require 'pry'

class Scraper
  attr_accessor :students

  def self.scrape_index_page(index_url)
    html = open(index_url)
    doc = Nokogiri::HTML(html)
    student_cards = doc.css(".student-card")
    students = []
    
    student_cards.map do |card|
      students << {
        :name => card.css("h4.student-name"),
        :location => card.css("p.student-location"),
        :profile_url => "./fixtures/student-site/" + card.css("a").attribute("href").value
      }
    end
    students
  end

  def self.scrape_profile_page(profile_url)
    
  end

end

