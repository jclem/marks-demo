class Mark < ActiveRecord::Base
  include PgSearch

  validates :url, presence: true

  pg_search_scope :pg_search, against: [:url, :title, :description],
    using: { tsearch: { dictionary: 'english' } }

  def self.search(query)
    if query.present?
      pg_search(query)
    else
      scoped.order('created_at DESC')
    end
  end
end
