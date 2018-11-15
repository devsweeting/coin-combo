require "pry"


def make_change(change)
  output = []

  coins = {
    "dollar" => 0,
    "quarter" => 0,
    "dime" => 0,
    "nickel" => 0,
    "penny" => 0
   }

   while (change >= 1) do
     coins["dollar"] += 1
     change -= 1
   end

   while (change >= 0.25) do
     coins["quarter"] += 1
     change -= 0.25
   end

   while (change >= 0.10) do
     coins["dime"] += 1
     change -= 0.10
   end

   while (change >= 0.05) do
     coins["nickel"] += 1
     change -= 0.05
   end

  while (change > 0) do
    coins["penny"] += 1
    change -= 0.01
  end

  coins.each do |key, value|
   if value > 0
     output.push("#{value} #{key}")
   end
  end
  output.join(', ')
end
