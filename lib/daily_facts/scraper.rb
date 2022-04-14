class DailyFacts::Scraper
    
    def self.scrape_facts
        site = "https://en.wikipedia.org/wiki/Main_Page"
        doc = Nokogiri::HTML(open(site))
        things = doc.css("div#mp-otd")
    end

    def self.scrape_news
        site = "https://en.wikinews.org/wiki/Main_Page"
        doc = Nokogiri::HTML(open(site))
        things = doc.css("div#MainPage_latest_news_text.latest_news_text")
    end
end