describe Record do
context "when first created" do
it "is empty" do
record = Record.new
record.should be_empty
end
end