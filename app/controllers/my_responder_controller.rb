class MyResponder < ActionController::Responder
  include CachedResponder
  include FlashResponder
  include PaginatedResponder
end



