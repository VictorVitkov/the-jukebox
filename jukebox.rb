require 'pry'

user_list = [
  "Backstreet Boys - I want it that way",
  "Celine Dion - My Heart Will Go On",
  "Whitney Houston - I will Always Love You",
  "Hansen - M-Bop",
  "Slayer - Angel of Death",
  "Pantera - Walk",
  "Meshuggah - Bleed",
  "Meshuggah - Rational Gaze",
  "Slipknot - Wait and Bleed",
  "Marilyn Manson - Tourniquet",
  "Marilyn Manson - The Beautiful People",
  "Rammstein - Du Hast"
]


class JukeboxOfDoom
  attr_accessor :playlist

  AVAILABLE_SONGS = [
    "Slayer - Angel of Death",
    "Pantera - Walk",
    "Slipknot - Left Behind",
    "Metallica - Battery",
    "System of a Down - Chop Suey",
    "Slipknot - Duality",
    "Rammstein - Du Hast",
    "Rage Against the Machine - Bombtrack",
    "Kittie - What I Always Wanted",
    "Slipknot - My Plague",
    "Slayer - South of Heaven",
    "Slayer - Born of Fire",
    "Pantera - Five Minutes Alone",
    "Pantera - Drag the Waters",
    "Meshuggah - Bleed",
    "Meshuggah - Rational Gaze",
    "Slipknot - Wait and Bleed",
    "Marilyn Manson - Tourniquet",
    "Marilyn Manson - The Beautiful People"
  ]

  # loop through user list, remove any songs which are not available in the
  # JukeboxOfDoom
  def initialize(user_list)
    @playlist = []
    user_list.each do |song|
      if AVAILABLE_SONGS.include?(song)
        @playlist << song
      end
    end
  end

  # randomize the order of @playlist
  def shuffle_songs!
    @playlist.shuffle!
  end

  # .shift removes the first item in an array and returns it.
  def play!
    @playlist.shift
  end

  def add_track(new_song)
    @playlist << new_song if AVAILABLE_SONGS.include?(new_song)
    AVAILABLE_SONGS.include?(new_song)
  end

  def to_s
    @playlist.join("\n")
  end
end

# creates a new instance (object) which takes user_list as an argument
jukebox_from_hell = JukeboxOfDoom.new(user_list)

puts "The user_list contains #{user_list.length} songs."
puts "Of these #{user_list.length} songs, only #{jukebox_from_hell.playlist.length} are available in the Jukebox of Doom: \n#{jukebox_from_hell.to_s}"
puts "\n"

#*******************************************************************************
puts "Let's play all #{jukebox_from_hell.playlist.length} songs!"

jukebox_from_hell.playlist.length.times do
  jukebox_from_hell.play!
end

puts "The playlist now has #{jukebox_from_hell.playlist.length} songs"
puts "\n"

#*******************************************************************************
puts "Lets add more songs to the playlist."
jukebox_from_hell.add_track("Slayer - South of Heaven")
jukebox_from_hell.add_track("Slayer - Born of Fire")
jukebox_from_hell.add_track("Slayer - Angel of Death")
jukebox_from_hell.add_track("Pantera - Walk")
jukebox_from_hell.add_track("Slipknot - Left Behind")
jukebox_from_hell.add_track("Metallica - Battery")
jukebox_from_hell.add_track("System of a Down - Chop Suey")
jukebox_from_hell.add_track("Slipknot - Duality")
jukebox_from_hell.add_track("Rammstein - Du Hast")
jukebox_from_hell.add_track("Rage Against the Machine - Bombtrack")
jukebox_from_hell.add_track("Kittie - What I Always Wanted")
jukebox_from_hell.add_track("Slipknot - My Plague")
jukebox_from_hell.add_track("Rick Astley - Never Gonna Give You Up")

puts jukebox_from_hell.playlist
puts "\n"

#*******************************************************************************
puts "Rearange the order of the tracks: "
jukebox_from_hell.shuffle_songs!
puts jukebox_from_hell.playlist
