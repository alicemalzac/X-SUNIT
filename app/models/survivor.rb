class Survivor < ApplicationRecord
    before_update :check_abductedcount

    private

    def check_abductedcount
        
        self.abducted = true if self.abductedcount >= 3
    end    

end
