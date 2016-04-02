require "dogeify/version"
require 'engtagger'

class Dogeify

  ADJECTIVES = %w[so such very many much].freeze
  def process(str)

    str = str.downcase

    tagger = EngTagger.new
    tagged_str = tagger.add_tags(str)

    phrases = tagger.get_nouns(tagged_str).keys

    phrases = phrases.each_with_index.map do |noun, i|
      "#{adjective(i)} #{noun}"
    end

    phrases << "wow."
    return phrases.join(' ')
  end

  private

  def adjective(i)
    ADJECTIVES[i % ADJECTIVES.size]
  end
end
