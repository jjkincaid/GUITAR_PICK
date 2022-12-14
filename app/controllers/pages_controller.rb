class PagesController < ApplicationController
  # before_action :authenticate_user!
  skip_before_action :authenticate_user!, only: :home # si utilisateur non identifié a acces a la home (only)


  def dashboard

    if user_signed_in?
    @user = current_user

    @owner_rentals = @user.guitars.map { |guitar| guitar.rentals }.flatten
    @owner_pending_rentals = @owner_rentals.select{|rental| rental.status == "pending"}
    @owner_accepted_rentals = @owner_rentals.select{|rental| rental.status == "accepted"}
    @owner_declined_rentals = @owner_rentals.select{|rental| rental.status == "declined"}

    @renter_rentals = current_user.rentals
    @renter_pending_rentals = @renter_rentals.where(status: "pending")
    @renter_accepted_rentals = @renter_rentals.where(status: "accepted")
    @renter_declined_rentals = @renter_rentals.where(status: "declined")
   else
    redirect_to guitars_path, status: :see_other
   end
  end

  def home
    @guitars = Guitar.all
    @markers = @guitars.geocoded.map do |guitar|
      {
        lat: guitar.latitude,
        lng: guitar.longitude,
        info_window: render_to_string(partial: "guitars/info_window", locals: {guitar: guitar}),
        image_url: helpers.asset_url("logo.svg")
      }
    end
  end
end
