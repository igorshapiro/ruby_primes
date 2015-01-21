class Table
  attr_reader :factors
  attr_reader :values

  def initialize factors, values
    dimensions_error! unless factors.length == values.length
    dimensions_error! unless values.all? {|row| row.length == factors.length}

    @factors = factors
    @values = values
  end

  def dimensions_error!
    raise ArgumentError, "Values dimensions should match factors dimension"
  end
end
