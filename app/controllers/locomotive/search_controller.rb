module Locomotive
  class SearchController < BaseController

    def index
      results = service.from_backoffice(current_site, params[:query])
      respond_with(results: results)
    end

    private

    def service
      @service ||= Locomotive::FullTextSearchService.new
    end
    
  end
end
