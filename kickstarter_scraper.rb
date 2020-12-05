require "nokogiri"
require "pry"
 
def create_project_hash
  html = File.read('fixtures/kickstarter.html')
  kickstarter = Nokogiri::HTML(html)
  binding.pry
end
 
create_project_hash
# projects: kickstarter.css("li.project.grid_4")
# title: project.css("h2.bbcard_name strong a").text
# image link: project.css("div.project-thumbnail a img").attribute("src").value
# project.css("p.bbcard_blurb").text
#variable_name.css(".project-meta").css('a').attribute("data-location").value
#variable_name.css(".project-stats").css('.first-funder').css('strong).text