class ApplicationController < ActionController::Base
    before_filter :check_user_quota

    def check_user_quota
      render json: { error: 'over quota' } if current_user.hits_count_within_current_month >= current_user.monthly_quota
    end
end
