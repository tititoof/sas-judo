module api
  class CreatePostProcedure

    def initialize(post_informations)
      @post_informations = post_informations
    end

    def execute
      Api::PostCreator(@post_informations)
    end

    attr_reader :post_informations
  end
end