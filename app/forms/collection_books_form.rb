require 'roo'

class CollectionBooksForm < Tramway::Core::ExtendedApplicationForm
  properties :book_file

  def book_file=(value)
    xlsx = Roo::Spreadsheet.open(value.tempfile.to_path)
    sheet = xlsx.sheet(xlsx.sheets.first)
    sheet.each do |row|
      author_name = row[1]
      author = Author.find_or_create_by! name: author_name
      Book.create! name: row[0], author: author
    end
  end
end
