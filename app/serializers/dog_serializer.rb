class DogSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name
end
