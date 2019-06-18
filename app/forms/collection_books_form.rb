require 'roo'

class CollectionBooksForm < Tramway::Core::ExtendedApplicationForm
  properties :book_file, :user_id

  def submit(params)
    value = params[:book_file]
    xlsx = Roo::Spreadsheet.open(value.tempfile.to_path)
    sheet = xlsx.sheet(xlsx.sheets.first)
    sheet.each do |row|
      author_name = row[1]
      publisher_name = row[2]
      author = Author.find_or_create_by! name: author_name
      publisher = Publisher.find_or_create_by! name: publisher_name

      book = Book.create name: row[0], author: author, publisher: publisher, 
        year_publishing: row[3], age_restrictions: row[4], status: 'доступна',
          user_id: params[:user_id], user_current: params[:user_current]
    end
    super
  end
end
