class PigLatinizer

    def piglatinize(text)
        converted = text.split(" ").map do |word|
            if word.start_with?(/[aAeEiIoOuU]/)
                word + "way"
            else
                if word[1].match?(/[aeiou]/)
                    word[1..-1] + word[0] + "ay"
                else
                    index_of_vowel = word.index(/[aeiou]/)
                    word[index_of_vowel..-1] + word[0..index_of_vowel-1] + "ay"
                end
            end
        end
        converted.join(" ")
    end
end