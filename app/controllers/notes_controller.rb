class NotesController <ApplicationController

  def index
    render json: Note.all
  end

  def new

  end

  def create
    @note = Note.new(params.require(:note).permit(:title, :body))
    @note.save
    @notes = Note.all
    render json: @note
##read active model docs top to bottom

  end

  def show

  end

  def edit

  end

  def udpate

  end

  def destroy
    @note = Note.find(params[:id])
    @note.destroy
  end


end
