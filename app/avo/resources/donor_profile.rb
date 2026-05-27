class Avo::Resources::DonorProfile < Avo::BaseResource
  # self.includes = []
  # self.attachments = []
  # self.search = {
  #   query: -> { query.ransack(id_eq: q, m: "or").result(distinct: false) }
  # }

  def fields
    field :blood_group, as: :select,
      options: {
        "A+" => "A+",
        "A-" => "A-",
        "B+" => "B+",
        "B-" => "B-",
        "AB+" => "AB+",
        "AB-" => "AB-",
        "O+" => "O+",
        "O-" => "O-"
      }

    field :latitude, as: :number
    field :longitude, as: :number

    field :available, as: :boolean

    field :last_donation_date, as: :date

    field :user, as: :belongs_to
  end
end
