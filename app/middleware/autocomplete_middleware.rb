class AutocompleteMiddleware
  def initialize(app)
    @app = app
  end

  def call(env)
    if env["PATH_INFO"] == "/autocomplete/item"
      request = Rack::Request.new(env)
      terms = Autocomplete.terms_for(request.params["substring"], 'item')
      [200, {"Content-Type" => "application/json"}, [terms.to_json]]
    else
      @app.call(env)
    end
  end
end