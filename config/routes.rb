CanvasRuby::Application.routes.draw do
  get "canvas" => "canvas#index"
  post "canvas" => "canvas#post"
end
