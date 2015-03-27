namespace :seeds do
  desc "add initial item names to be chosen in the autocomplete"
  task item_names: :environment do
    names = ['Homework', 'Visiting Lecturer', 'Reading', 'Assignment']
    names.each do |name|
      if Item.create(name: name, content: 'seed item name')
        puts "saved"
      else
        puts "not saves :("
      end
    end
  end
end