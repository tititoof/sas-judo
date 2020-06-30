module Api
  class PostUpdater
    def initialize(post_id, post_informations)
      @post_id = post_id
      @post_informations = post_informations
    end

    def execute
      @post = Postt.find(@post_id)
      @post.update(@post_informations)
      @post
    end

    private

    attr_reader :post_informations
    attr_reader :post_id
  end
end