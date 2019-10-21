require('minitest/autorun')
require('minitest/rg')
require_relative('../extension.rb')

class TestLibrary < MiniTest::Test

  def setup
    @library = [
      {
       title: "lord_of_the_rings",
       rental_details: {
         student_name: "Jeff",
         date: "01/12/16"
        }
      },
      {
        title: "Guide_for_ruby",
        rental_details: {
          student_name: "Daniel",
          date: "02/2/20"
        }
      }
     ]

    @new_book = {
            title: "Harry Potter",
            rental_details: {
              student_name: "",
              date: ""
            }
          }

   end

   def test_get_books
     books = Library.new(@library)
      result = books.get_books
     assert_equal(@library, result)
   end

   def test_search_by_title
     books = Library.new(@library)
     result = books.search_by_title("Guide_for_ruby")
     book = @library[1]
     assert_equal(book, result)
   end

   def test_search_by_title_return_rental_details
     books = Library.new(@library)
     result = books.search_by_title_return_rental_details("Guide_for_ruby")
     book = @library[1][:rental_details]
     assert_equal(book, result)
   end

   def test_add_book
     books = Library.new(@library)
     books.add_book(@new_book)
     result = @library.length
     assert_equal(3, result)
   end

  def test_change_rental_details
    books = Library.new(@library)
    books.change_rental_details("Guide_for_ruby", "Tom", "03/03/13")
    student_name = @library[1][:rental_details][:student_name]
    return_date = @library[1][:rental_details][:date]
    assert_equal("Tom", student_name)
    assert_equal("03/03/13", return_date)
  end



end
