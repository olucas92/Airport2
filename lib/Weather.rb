module Weather

  def conditions
    @weather = ["sunny", "sunny", "sunny", "stormy"].shuffle.first
  end

  def stormy?
    @weather == "stormy"
  end

end