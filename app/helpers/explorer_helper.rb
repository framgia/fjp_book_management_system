module ExplorerHelper
  def random_bg_color
    "%06x" % (rand * 0xffffff)
  end
end
