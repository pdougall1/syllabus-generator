class InstructorSerializer < ActiveModel::Serializer
  attributes :id, :created_at, :updated_at, :first_name,
             :last_name, :syllabus_ids

  def syllabus_ids
    object.syllabuses.pluck(:id)
  end
end
