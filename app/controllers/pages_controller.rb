class PagesController < ApplicationController
  def home
  end

  def profile
    @user = current_user
    # @equipment = policy_scope(Equipment).order(created_at: :desc)
    @equipment = Equipment.where(:user_id => current_user.id)
    # @equipment = Equipment.all
    @bookings = []
    @equipment.each do |equipment|
      equipment.bookings.each do |booking|
      	@bookings << booking
      end
    end

    @bookings_by_user = current_user.bookings
  end




end
