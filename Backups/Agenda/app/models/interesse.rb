class Interesse < ApplicationRecord
  belongs_to :produto
  belongs_to :pessoa
end
