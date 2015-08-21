class WelcomeController < ApplicationController
  def index
      
      @entries = Entry.all
    
      @websites = [
          ["http://smashingmagazine.com", "smashing magazine"],
          ["http://www.sengo.nl", "sengo"],
      ["http://guides.rubyonrails.org", "Ruby on Rails Guides"],
      ]
  end
end
