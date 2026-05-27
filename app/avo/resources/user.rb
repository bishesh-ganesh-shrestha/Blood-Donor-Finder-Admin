class Avo::Resources::User < Avo::BaseResource
  # self.includes = []
  # self.attachments = []
  # self.search = {
  #   query: -> { query.ransack(id_eq: q, m: "or").result(distinct: false) }
  # }

  def fields
    field :id, as: :id
    field :email, as: :text
    field :name, as: :text
    field :phone_number, as: :text
    field :is_admin, as: :boolean
    field :is_donor, as: :boolean, sortable: false do
      record.is_donor?
    end
    field :created_at, as: :date_time
    field :updated_at, as: :date_time

    field :donor_profile, as: :has_one
    field :blood_requests, as: :has_many
  end
end
