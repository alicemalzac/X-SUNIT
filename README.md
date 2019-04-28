# X-SUNIT

This project has been developed for the *Gocase* backend internship. So I would like to thank for the challenge, it really pushed me into learning Ruby on Rails. It has made me realize how interesting the language is and how much you can do with it.

# The code
We are dealing with an apocalyptical situation, so it is important to keep everything simple. In this program we can register a survivor, edit and destroy the register, and mark the survivor as abducted (for the variable to modify, we must have at least 3 "clicks" in the button and we also must report survivors) and see the reports.

A survivor has the following variables:
* Survivor (id: integer, name: string, age: integer, gender: string, latitude: float, longitude: float, created_at: datetime, updated_at: datetime, abducted: boolean, abductedcount: integer

# The Routes

                   Prefix Verb   URI Pattern                                                                              Controller#Action
                survivors GET    /survivors(.:format)                                                                     survivors#index
                          POST   /survivors(.:format)                                                                     survivors#create
             new_survivor GET    /survivors/new(.:format)                                                                 survivors#new
            edit_survivor GET    /survivors/:id/edit(.:format)                                                            survivors#edit
                 survivor GET    /survivors/:id(.:format)                                                                 survivors#show
                          PATCH  /survivors/:id(.:format)                                                                 survivors#update
                          PUT    /survivors/:id(.:format)                                                                 survivors#update
                          DELETE /survivors/:id(.:format)                                                                 survivors#destroy
                     root GET    /                                                                                        static_pages#index   
                 abducted GET    /abducted/:id(.:format)                                                                  survivors#abducted
                 reports GET    /reports(.:format)                                                                       static_pages#reports
       rails_service_blob GET    /rails/active_storage/blobs/:signed_id/*filename(.:format)                               active_storage/blobs#show
                          Prefix Verb   URI Pattern                                                                              Controller#Action
                survivors GET    /survivors(.:format)                                                                     survivors#index
                          POST   /survivors(.:format)                                                                     survivors#create
             new_survivor GET    /survivors/new(.:format)                                                                 survivors#new
            edit_survivor GET    /survivors/:id/edit(.:format)                                                            survivors#edit
                 survivor GET    /survivors/:id(.:format)                                                                 survivors#show
                          PATCH  /survivors/:id(.:format)                                                                 survivors#update
                          PUT    /survivors/:id(.:format)                                                                 survivors#update
                          DELETE /survivors/:id(.:format)                                                                 survivors#destroy
                     root GET    /                                                                                        static_pages#index
                 abducted GET    /abducted/:id(.:format)                                                                  survivors#abducted
     rails_service_blob GET    /rails/active_storage/blobs/:signed_id/*filename(.:format)                               active_storage/blobs#show
    rails_blob_representation GET    /rails/active_storage/representations/:signed_blob_id/:variation_key/*filename(.:format) active_storage/representations#show
       rails_disk_service GET    /rails/active_storage/disk/:encoded_key/*filename(.:format)                              active_storage/disk#show
       update_rails_disk_service PUT    /rails/active_storage/disk/:encoded_token(.:format)                                      active_storage/disk#update
       rails_direct_uploads POST   /rails/active_storage/direct_uploads(.:format)                                           active_storage/direct_uploads#create


# What stack did I used?

  * Ruby on Rails 5;
  * Git;
  * Sqlite;
  * Bootstrap

