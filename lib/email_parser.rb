# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require 'pry'

class EmailAddressParser

    def initialize(emails)
        @emails = emails 
    end 

    def parse 
        #separate emails into array
        email_array = @emails.split
        #eliminate commas
        email_array.each do |email|
        if email[-1] == ","
           email[-1] = ""
        end  
        end 
        #eliminate duplicates
        final_array = email_array.uniq 
    end
end  
