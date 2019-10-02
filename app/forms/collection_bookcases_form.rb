require 'date'

class CollectionBookcasesForm < Tramway::Core::ExtendedApplicationForm
  properties :book_id, :user_id, :taken_at

  def submit(params)
    bookcase = Bookcase.create book_id: params[:book_id], user_id: params[:user_id], taken_at: params[:taken_at]
  end

end
