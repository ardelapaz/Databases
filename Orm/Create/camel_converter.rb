class Camel
    def initialize()
    end

    def snake_to_camel(word)
        word.gsub!(/_(\w)/) { $1.upcase }
        puts word
    end

    test = Camel.new()

    test.snake_to_camel("camel_converter")
    test.snake_to_camel("random")
    test.snake_to_camel("camel_converter_test_camel_converter_test")

end