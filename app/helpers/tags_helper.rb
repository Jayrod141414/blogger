module TagsHelper
    def tag_params
        params.require(:tag).permit(:name, :article_list)
    end
end
