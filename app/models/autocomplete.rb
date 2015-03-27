class Autocomplete

  def self.terms_for(substring, model)
    model = model.capitalize.constantize
    model.where("name ilike ?", "%#{substring}%").limit(10).pluck(:name)
  end
end