require "sinatra"

get("/") do
    erb(:form)
end

post("/submit") do
    @name = params[:name]
    @age = params[:age]
    @email = params[:email]
    @learning_mode = params[:learning_mode]
    @favourite_color = params[:favourite_color]
    @hobby = params[:hobby]
    @subscription = params[:subscription] == "on" ? "Yes" : "No"

    erb(:result)

end


