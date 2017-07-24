class ExplorerController < ApplicationController
  def index
    settings = Settings.explorer
    @categories = Category.all.limit settings.categories.limit
    @tags = Tag.all.limit settings.tags.limit
  end
end
