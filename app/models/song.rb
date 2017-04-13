class Song < ActiveRecord::Base

  # Songs have the following attributes and limitations:
  # title, a string
  # Must not be blank
  # Cannot be repeated by the same artist in the same year
  validates :title, presence: true, uniqueness: true

  # released, a boolean describing whether the song was ever officially released.
  # Must be true or false
  validates :released, inclusion: { in: [true, false] }

  # release_year, an integer
  # Optional if released is false
  # Must not be blank if released is true
  # Must be less than or equal to the current year
  with_options if: :released? do |x|
  x.validates :release_year, presence: true
  x.validates :release_year, numericality: { less_than_or_equal_to: Time.now.year }
end

  # artist_name, a string
  # Must not be blank
  validates :artist_name, presence: true
end

#rails generate resource song title:string released:boolean release_year:integer artist_name:string genre:string
