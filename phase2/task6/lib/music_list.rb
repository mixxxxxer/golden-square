class MusicList 
  def initialize(list_name)
    @list_name = list_name
    @music_list = []
  end

  def show_listname
    @list_name
  end

  def print_list
    @music_list.join(", ")
  end

  def add_item (song)
    @music_list << song unless @music_list.include?(song)
  end
end