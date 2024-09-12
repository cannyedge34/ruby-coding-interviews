# frozen_string_literal: true

class Domains
  def call(array)
    array.each_with_object({}) do |record, acc|
      count = record.split(',').first.to_i
      domain = record.split(',').last
      spplited_domain = domain.split('.')

      spplited_domain.each_with_index do |_, index|
        subset = spplited_domain[index..spplited_domain.size].join('.')
        if acc[subset].nil?
          acc[subset] = count
          next
        end

        acc[subset] += count
      end

      acc
    end
  end
end

# com: 1345
# google.com: 900

[
'900,google.com',
'60,mail.yahoo.com',
'10,mobile.sports.yahoo.com',
'40,sports.yahoo.com',
'300,yahoo.com',
'10,stackoverflow.com',
'20,overflow.com',
'5,com.com',
'2,en.wikipedia.org',
'1,m.wikipedia.org',
'1,mobile.sports',
'1,google.co.uk'
]