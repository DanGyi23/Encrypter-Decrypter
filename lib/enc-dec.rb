def encrypt(text, n)
  if n <= 0
    text
  else
    n.times do
      text = (text.chars.select.with_index { |x,i| i % 2 != 0 } + text.chars.select.with_index { |x,i| i % 2 == 0 }).join('')
    end
    text
  end
end

def decrypt(restore, n)
  if n <= 0
    restore
  else
    n.times do
      a = restore.chars[0..(restore.length/2 - 1)]
      b = restore.chars[(restore.length/2)..-1]
      restore = b.zip(a).flatten.join('')
    end
    restore
  end
end
