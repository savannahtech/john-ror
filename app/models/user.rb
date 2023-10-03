has_many :hits

def hits_within_current_month
  start_of_month = Time.now.beginning_of_month
  hits.where('created_at >= ?', start_of_month)
end

def hits_count_within_current_month
  hits_within_current_month.count
end

def monthly_quota
  10_000
end