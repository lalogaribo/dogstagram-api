class DogSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :breed
end
