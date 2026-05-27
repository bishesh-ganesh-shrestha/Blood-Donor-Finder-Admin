class Avo::Resources::BloodRequest < Avo::BaseResource
  # self.includes = []
  # self.attachments = []
  # self.search = {
  #   query: -> { query.ransack(id_eq: q, m: "or").result(distinct: false) }
  # }

  def fields
    field :blood_group, as: :text

    field :contact_number, as: :text

    field :latitude, as: :number
    field :longitude, as: :number

    field :urgency_level, as: :select,
          options: {
            emergency: "Emergency",
            urgent: "Urgent",
            normal: "Normal"
          }

    field :status, as: :select,
          options: {
            open: "Open",
            matched: "Matched",
            accepted: "Accepted",
            in_progress: "In Progress",
            fulfilled: "Fulfilled",
            cancelled: "Cancelled"
          }

    field :user, as: :belongs_to

    field :blood_donation_requests,
          as: :has_many  end
end
