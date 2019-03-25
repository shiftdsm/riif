module Riif::DSL
  class Trns < Base
    HEADER_COLUMNS = [
      :trnstype,
      :date,
      :item,
      :invitem,
      :accnt,
      :name,
      :amount,
      :docnum,
      :participant,
      :description,
      :memo,
      :clear,
      :toprint,
      :addr5,
      :duedate,
      :terms,
      :credit_card_acct
    ]
    START_COLUMN = 'TRNS'
    END_COLUMN = 'ENDTRNS'

    def headers
      [
        ["!#{START_COLUMN}"].concat(HEADER_COLUMNS.map(&:to_s).map(&:humanize).map(&:upcase)),
        ["!SPL"].concat(Spl::HEADER_COLUMNS.map(&:to_s).map(&:humanize).map(&:upcase)),
        ["!#{END_COLUMN}"]
      ]
    end

    def rows
      @rows << [END_COLUMN]
    end

    def spl(&block)
      Spl.new.build(&block)[:rows].each do |row|
        @rows << row
      end
    end
  end
end
