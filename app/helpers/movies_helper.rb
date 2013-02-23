module MoviesHelper
  # Checks if a number is odd:
  def oddness(count)
    count.odd? ?  "odd" :  "even"
  end

  def sortable(column)   
   return link_to "Movie title", {:sort => column}, {:class => 'title_header'} if column == 'title'
   return link_to column.titleize, {:sort => column} , {:class => 'release_date_header'}
  end
 
  def hilite(nesto)
	if @hilite == nesto
	return 'hilite'
	else
	return 'ne-hilite'
	end
  end
end
