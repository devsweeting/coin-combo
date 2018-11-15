require "coin_combo"
require "rspec"

describe("coin_combo") do

  it("output '1 penny' when user enters .01") do
    expect(make_change(0.01)).to(eq('1 penny'))
  end

  it("output '1 penny' when user enters .04") do
    expect(make_change(0.04)).to(eq('4 penny'))
  end

  it("output '1 nickel' when user enters .05") do
    expect(make_change(0.05)).to(eq('1 nickel'))
  end

  it("output '1 nickel 1 penny' when user enters .06") do
    expect(make_change(0.06)).to(eq("1 nickel, 1 penny"))
  end

  it("output '1 dime 1 nickel 1 penny' when user enters .16") do
    expect(make_change(0.16)).to(eq("1 dime, 1 nickel, 1 penny"))
  end

  it("output '1 quarter' when user enters .25") do
    expect(make_change(0.25)).to(eq("1 quarter"))
  end

  it("output '1 quarter 1 dime 1 nickel 1 penny' when user enters .06") do
    expect(make_change(0.41)).to(eq("1 quarter, 1 dime, 1 nickel, 1 penny"))
  end

  it("output '1 dollar 1 quarter 1 dime 1 nickel 1 penny' when user enters .06") do
    expect(make_change(1.41)).to(eq("1 dollar, 1 quarter, 1 dime, 1 nickel, 1 penny"))
  end
end
