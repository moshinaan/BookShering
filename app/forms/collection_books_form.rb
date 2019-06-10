require 'roo'

class CollectionBooksForm < Tramway::Core::ExtendedApplicationForm
  properties :book_file

  def book_file=(value)
    xlsx = Roo::Spreadsheet.open(value.tempfile.to_path)
    sheet = xlsx.sheet(xlsx.sheets.first)
    sheet.each do |row|
    author_name = row[1]
    publisher_name = row[2]
    author = Author.find_or_create_by! name: author_name
    publisher = Publisher.find_or_create_by! name: publisher_name

    Book.create! name: row[0], author: author, publisher: publisher, year_publishing: row[3], 
      age_restrictions: row[4], status: 'доступна', user_id: user
    end
  end
end
