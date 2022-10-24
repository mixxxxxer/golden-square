class SecretDiary
  def initialize(diary) # diary is an instance of Diary
    @diary = diary
    @permit = false
  end

  def read
    # Raises the error "Go away!" if the diary is locked
    # Returns the diary's contents if the diary is unlocked
    # The diary starts off locked
    @permit ? @diary.read : 'Go away!'
  end

  def lock
    @permit = false
  end

  def unlock
    @permit = true
  end
end