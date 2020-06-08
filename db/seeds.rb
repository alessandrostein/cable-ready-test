# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

(1..20).each { |_n| Export.create! }
(1..10).each { |_n| Export.create!(status: :finished) }
(1..5).each { |_n| Export.create!(status: :failed) }
Export.create!(status: :processing)
