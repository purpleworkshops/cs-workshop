def display_words(word_array)
  20.times do |n|
    print "#{n}: "
    word_array.each { |word| print "#{word} " }
    print "\n"
  end
end

days = %w(Monday Tuesday Wednesday Thursday Friday Saturday Sunday)
months = %w(Jan Feb Mar Apr May Jun Jul Aug Sep Oct Nov Dec)

t1 = Thread.new { display_words(days) }
t2 = Thread.new { display_words(months) }

t1.join
t2.join
