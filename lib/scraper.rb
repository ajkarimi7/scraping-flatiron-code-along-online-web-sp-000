require 'nokogiri'
require 'open-uri'
require 'pry'

require_relative './course.rb'

class Scraper
  
  def print_courses
    self.make_courses
    Course.all.each do |course|
      if course.title && course.title != ""
        puts "Title: #{course.title}"
        puts "  Schedule: #{course.schedule}"
        puts "  Description: #{course.description}"
      end
    end
  end
  
  def get_page
  
    doc = Nokogiri::HTML(open("http://learn-co-curriculum.github.io/site-for-scraping/courses"))
    
    binding.pry 
  end 
  
  # def get_courses
  #   html = open("http://learn-co-curriculum.github.io/site-for-scraping/courses")
  #   doc = Nokogiri::HTML(html)
  # end 
    
  
end

Scraper.new.get_page

Page itself: 
doc = Nokogiri::HTML(open("http://learn-co-curriculum.github.io/site-for-scraping/courses"))

Collection of course offerings: 



doc.css(".post").first.css("h2").text

doc.css(".post").first.css(".date").text

doc.css(".post").first.css("p").text
