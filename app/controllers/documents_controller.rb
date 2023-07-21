class DocumentsController < ApplicationController
  def index
    @documents = Document.all();
  end

  def show
    @document = Document.find(params[:art_id]);
  end

  def new
     @article_id = params[:art_id]
     @document = Document.new;
     @action = 'Save'
  end

   def create
         @document =  Document.new(document_params);
             if @document.save
               redirect_to documents_new_path(document_params['article_id']), notice: 'Document has been create successfully'
             else
             @action = 'Save'
             render :new
          end
   end

   private def document_params
             params.require(:document).permit(
                :name,
                :doc_type,
                :article_id,
             )
   end
end
