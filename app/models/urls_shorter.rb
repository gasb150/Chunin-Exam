class UrlsShorter < ApplicationRecord

    belongs_to :user
    before_create :to_short_url, :clean
    
    def to_short_url
        rand(36**8).to_s(36)
      end


      def clean
       url_long.strip
        clean_url = self.url_long.downcase.gsub(/(https?:\/\/)|(www\.)/,"")
        "https://#{clean_url}"
      end
end
