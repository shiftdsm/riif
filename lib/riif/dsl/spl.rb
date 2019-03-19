module Riif::DSL
  class Spl < Base
    HEADER_COLUMNS = [
      :trnstype,
      :date,
      :item,
      :accnt,
      :name,
      :class,
      :amount,
      :docnum,
      :participant,
      :description,
      :clear,
      :qnty,
      :reimbexp,
      :servicedate,
      :other2
    ]
    START_COLUMN = 'SPL'
    END_COLUMN = ''

    def headers
      []
    end
  end
end
