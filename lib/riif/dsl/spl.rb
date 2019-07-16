module Riif::DSL
  class Spl < Base
    HEADER_COLUMNS = [
      :trnstype,
      :date,
      :class,
      :item,
      :invitem,
      :accnt,
      :name,
      :amount,
      :docnum,
      :memo,
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
