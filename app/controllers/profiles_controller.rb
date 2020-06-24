class ProfilesController < ArtsController
  before_action :authenticate_user!

  def new
    @profile = Profile.new
  end

  def create
    p profile_params
    @profile = Profile.new(name: params[:name], about_me: params[:about_me], interest: params[:interest], user: current_user)

    if @profile.save
      redirect_to "/profile/#{@profile.id}", notice: 'Congratulations! Your Artist profile is created!'
    else
      render :new
    end
  end

  def show
    set_profile
  end

end









private

def profile_params
  p params
  params.permit(:name, :about_me, :interest, :photo)
end

def set_profile
  @profile = Profile.find(params[:id])
end