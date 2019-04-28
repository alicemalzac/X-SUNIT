class Survivor < ApplicationRecord
    
    before_update :check_abductedcount, abducted == true if abductedcount >= 3

    private

    def check_abductedcount

    end    

end
