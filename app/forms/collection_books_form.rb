require 'roo'

class CollectionBooksForm < Tramway::Core::ExtendedApplicationForm
  properties :book_file, :user_id,:name, :author, :heading, :publisher, :year_publishing, :age_restrictions

  def submit(params)
    value = params[:book_file]
    xlsx = Roo::Spreadsheet.open(value.tempfile.to_path)
    sheet = xlsx.sheet(xlsx.sheets.first)
    sheet.each do |row|
      binding.pry
      author_name = row[1]
      publisher_name = row[3]
      heading_name = row[2]
      author = Author.find_or_create_by! name: author_name
      heading = Heading.find_or_create_by! name: heading_name
      publisher = Publisher.find_or_create_by! name: publisher_name
      book = Book.create(name: row[0], author: author, heading: heading, publisher: publisher, year_publishing: row[4], age_restrictions: row[5], user_id: params[:user_id]) 
    end
  end
end
