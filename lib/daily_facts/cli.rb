class DailyFacts::CLI

    def call 
        DailyFacts::Scraper.new
        puts "Welcome to Daily Facts!"
        start
    end

    def start
        puts ""
        puts "Enter 'Facts' to return a list of important historical world events that happened today, or enter 'News' to get top world news headlines fom today, or enter 'Exit' to exit the app:"
        input = gets.strip.downcase
        puts ""
        if input == "facts"
            print_facts
            start
        elsif input == "news"
            print_news
            start
        elsif input == "exit"
            puts ""
            puts "Goodbye!"
            exit
        else
            puts ""
            puts "INVALID INPUT"
            start
        end
    end
        
    def print_facts
        puts "Today in History! #{DailyFacts::Scraper.scrape_facts.text}"
    end

    def print_news
        puts "Today's World News! #{DailyFacts::Scraper.scrape_news.text}"
    end
end