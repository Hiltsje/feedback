class EntriesController < ApplicationController

    def index

      @entries = Entry.all

      @websites = [
      ["http://railsgirls.com", "Rails Girls"],
      ["https://en.wikibooks.org/wiki/Ruby_Programming", "Wikibooks"],
      ["http://guides.rubyonrails.org", "Ruby on Rails Guides"],
      ]
    end
    
    def show
        @entry = Entry.find(params["id"])
    end

    def create
        entry_params = params["entry"].permit("title", "contents", created_at)
      entry = Entry.create(entry_params)
      redirect_to(entry_path(entry))
    end
    
    def edit
        @entry = Entry.find(params["id"])
    end
    
    def update
        entry_params = params["entry"].permit("title", "contents")
      entry = Entry.find(params["id"])
      entry.update(entry_params)
      redirect_to(entry_path(entry))
    end
end
