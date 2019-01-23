module Riif::DSL
  class Spl < Base
    HEADER_COLUMNS = [
      :trnstype,
      :date,
      :item,
      :name,
      :accnt,
      :amount,
      :docnum,
      :participant,
      :description
    ]
    START_COLUMN = 'SPL'
    END_COLUMN = ''

    def headers
      []
    end
  end
end
