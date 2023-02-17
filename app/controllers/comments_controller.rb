class CommentsController < ApplicationController
    def create
        @article = Article.find(params[:article_id])
        @comment = @article.comments.create(comment_params)

        redirect_to article_path(@article)
    end

    # my
    # def destroy
    #     @article = Article.find(params[:article_id])
    #     @article.comments.destroy

    #     redirect_to article_path(@article) ,status: :see_other
    # end

    # def show
    #     @comment = @article.comments.all
    # end

    private
    def comment_params
        params.require(:comment).permit(:commenter , :body)
    end

end
