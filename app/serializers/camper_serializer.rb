# app/serializers/camper_serializer.rb
class CamperSerializer < ActiveModel::Serializer
  attributes :id, :name, :campsite_id
end
