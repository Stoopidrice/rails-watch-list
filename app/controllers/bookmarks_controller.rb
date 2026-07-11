class BookmarksController < ApplicationController
 def new
    @list = List.find(params[:list_id])
    @bookmark = Bookmark.new
  end

  def create

  @list = List.find(params[:list_id])

  @bookmark = Bookmark.new(bookmark_params)
 # associate bookmark to the list
  @bookmark.list = @list

  if @bookmark.save
    redirect_to list_path(@list)
  else
    render :new
  end

end


private

def bookmark_params
  params.expect(:bookmar [ :movie_id, :comment ])
end
end
