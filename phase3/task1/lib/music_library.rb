class MusicLibrary
  def initialize
    @library = []
  end

  def add(track) 
    @library << track
  end

  def all
    @library
  end
  
  def search(keyword)
    @library.select{|instant| instant if instant.matches?(keyword)}
  end
end