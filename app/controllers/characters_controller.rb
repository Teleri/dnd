class CharactersController < ApplicationController
  before_action :find_user, only: %i[index show new create edit update]
  before_action :find_character, only: %i[show edit update destroy]

  def index
    @characters = Character.all
  end

  def show
    # find_character
  end

  def new
    @character = Character.new
  end

  def create
    @character = Character.new(character_params)
    @character.user = @user
    if @character.save
      redirect_to user_character_path(@user, @character)
    else
      render 'new'
    end
  end

  def edit
    # find_character
  end

  def update
    if @character.update(character_params)
      redirect_to user_character_path(@character)
    else
      render 'edit'
    end
  end

  def destroy
    if @character.destroy
      redirect_to characters_path
    else
      redirect_to character_path(@character)
    end
  end

  private

  def find_user
    @user = User.find(params[:user_id])
  end

  def find_character
    @character = Character.find(params[:id])
  end

  def character_params
    params.require(:character).permit(:name, :race, :character_class, :age, :height, :weight, :alignment, :background, :gender)
  end
end
