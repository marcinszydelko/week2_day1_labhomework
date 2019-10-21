class Library

  def initialize(library)
    @library = library
   end

   def get_books
     return @library
   end

   def search_by_title(book_title)
     for book in @library
       return book if book[:title] == book_title
     end
   end

   def search_by_title_return_rental_details(book_title)
     for book in @library
       return book[:rental_details] if book[:title] == book_title
     end
   end

   def add_book(book)
     @library.push(book)
   end

   def change_rental_details(title, name, date)
     book = search_by_title(title)
     book[:rental_details][:student_name] = name
     book[:rental_details][:date] = date

   end

end
