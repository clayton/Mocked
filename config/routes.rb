ActionController::Routing::Routes.draw do |map|
  map.search "/search", :controller => :search, :action => "go"
  map.root :controller => :search
end
