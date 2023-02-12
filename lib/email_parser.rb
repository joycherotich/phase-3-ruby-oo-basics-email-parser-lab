# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').



class EmailAddressParser
    attr_reader :emails
  
    def initialize(emails)
      @emails = emails
    end
  
    def parse
      emails.split(/[\s,]+/).uniq
    end
  end
 
  parser = EmailAddressParser.new("test1@example.com, test2@example.com test3@example.com")
  p parser.parse
  # Output: ["test1@example.com", "test2@example.com", "test3@example.com"]
  
  
  
  