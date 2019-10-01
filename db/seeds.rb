Tramway::User::User.create! email: "admin@mail.com", password: "123", role: :admin
User.create! email: "user@mail.com", password: "123456", name: "User1"
Author.create! name: "Author1"
Publisher.create! name: "Publisher1"
Heading.create! name: "Heading1"
Book.create! user_id: User.last.id, name: "Book1", author_id: Author.last.id, publisher_id: Publisher.last.id, year_publishing: 2015, heading_id: Heading.last.id
