# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "soda/client"

Category.destroy_all
Neighbourhood.destroy_all
Park.destroy_all
Tree.destroy_all

client = SODA::Client.new({ domain:    "data.winnipeg.ca",
                            app_token: "XsbhhfFbeIG0Mb3lCKvuVS31w" })

results = client.get("https://data.winnipeg.ca/resource/hfwk-jp4h.json").body

results.each do |t|
  tree = Tree.create(
    source_id:     t["tree_id"].to_i,
    diameter:      t["diameter_at_breast_height"].to_i,
    latitude:      t["location"]["latitude"],
    longitude:     t["location"]["longitude"],
    category:      Category.find_or_create_by(botanical_name: t["botanical_name"],
                                              common_name:    t["common_name"]),
    neighbourhood: Neighbourhood.find_or_create_by(neighbourhood_name: t["neighbourhood"]),
    park:          Park.find_or_create_by(park_name: t["park"])
  )

  if tree.save
  else
    tree.errors.messages.each do |column, errors|
      errors.each do |error|
        puts "The #{column} property #{error}."
      end
    end
  end
end

puts "Created #{Category.count} categories"
puts "Created #{Neighbourhood.count} Neighbourhoods"
puts "Created #{Park.count} Parks"
puts "Created #{Tree.count} trees"
