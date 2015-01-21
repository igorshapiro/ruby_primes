class Formatter
  def initialize
    @col_width = 4
  end

  def display table
    display_row "", table.factors
    table.factors.zip(table.values) {|(factor,row)|
      display_row factor, row
    }
  end

  def display_row header, values
    s = "%#{@col_width}s |" % [header] +
      values.map{|x| "%#{@col_width}d" % [x]}.join("")
    puts s
  end
end
