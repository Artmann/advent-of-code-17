class Day4
  def is_valid_passphrase?(passphrase)
    words = passphrase.split(/\s/)
    return words.size == words.uniq.size
  end

  def is_valid_super_secure_passphrase?(passphrase)
    words = passphrase.split(/\s/)
    return false if words.size != words.uniq.size

    return words
      .combination(2)
      .select { |a| is_anangram? a.first, a.last }
      .size == 0
  end

  private
  def is_anangram?(word, possible_anagram)
    return word.chars.sort == possible_anagram.chars.sort
  end
end