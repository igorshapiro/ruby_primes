describe "Formatter" do
  let (:table) { Table.new [1,2,3], [[4,5,6],[7,8,9],[10,11,12]]}
  let (:formatter) { Formatter.new}
  describe "display" do
    it "Displays the table" do
      expect {
        formatter.display(table)
      }.to output(
        """     |   1   2   3
   1 |   4   5   6
   2 |   7   8   9
   3 |  10  11  12
"""
      ).to_stdout
    end
  end
end
