require "vs_token_generator/version"
require "securerandom"

module VsTokenGenerator
  class Token
    # setting initial value (optional)
    @@charset = %w{0 1 2 3 5 8 A B C D E F G H I J K L M N O P Q R S T U V W X Y Z}
    @@group_size = 5
    @@length = 25

    attr_accessor :group_size, :length

    def initialize(params = {})
      @length = params.fetch(:length, @@length)
      @group_size = params.fetch(:group_size, @@group_size)
    end

    def raw_token
      (1..@length).map { random_char @@charset }.join
    end

    def generate(token=raw_token)
      pretty_token(token, @group_size)
    end

    private
    def pretty_token(input, group_size)
      return input if group_size < 1
      input.split('').each_slice(group_size).map(&:join).join('-')
    end

    def random_char(charset)
      charset[SecureRandom.random_number(charset.size)]
    end
  end
end
