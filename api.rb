require 'sinatra'
require 'json'

# Habilitando CORS
before do
    response.headers['Access-Control-Allow-Origin'] = '*'
    response.headers['Access-Control-Allow-Methods'] = 'GET, POST, PUT, DELETE, OPTIONS'
    response.headers['Access-Control-Allow-Headers'] = 'Content-Type, Authorization, X-Requested-With'
end


products = [
    {
        photo: "https://m.media-amazon.com/images/I/61xOtH1kTsL._AC_UL320_.jpg",
        name: "One Piece 3 em 1 Vol. 1",
        price: 42.40,
        is_promotion: true
    },
    
    {
        photo: "https://m.media-amazon.com/images/I/61qIf0h9O3L._AC_UL320_.jpg",
        name: "Haikyu!! Vol. 07 - Big",
        price: 32.99,
        is_promotion: false
    },

    {
        photo: "https://m.media-amazon.com/images/I/71QS2yNxhoL._AC_UL320_.jpg",
        name: "Chainsaw Man Vol. 1",
        price: 27.70,
        is_promotion: true
    }
]

shop_info = {
    name: "Manga's house",
    color: "#1d288f",
    owner: "Alansidney Júnior",
    department: "Books"
}

get "/products" do
    content_type :json
    {products: products}.to_json
    status 200
end

get "info" do
    content_type :json
    {info: shop_info}
    status 200
end
