class Avo::Resources::BloodDonationRequest < Avo::BaseResource
  # self.includes = []
  # self.attachments = []
  # self.search = {
  #   query: -> { query.ransack(id_eq: q, m: "or").result(distinct: false) }
  # }

  def fields
    field :status, as: :select,
          options: {
            pending: "Pending",
            accepted: "Accepted",
            rejected: "Rejected",
            completed: "Completed"
          }

    field :donor_latitude, as: :number
    field :donor_longitude, as: :number

    field :blood_request, as: :belongs_to
    field :donor_profile, as: :belongs_to
  end
end
