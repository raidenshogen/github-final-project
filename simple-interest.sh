echo "================================================"
echo "         Simple Interest Calculator            "
echo "================================================"

# ── Input: Principal ─────────────────────────────────
echo ""
echo "Enter the Principal amount (P):"
read principal

# ── Input: Rate of Interest ───────────────────────────
echo ""
echo "Enter the Rate of Interest (R) in % per annum:"
read rate

# ── Input: Time Period ────────────────────────────────
echo ""
echo "Enter the Time Period (T) in years:"
read time

# ── Calculate Simple Interest ─────────────────────────
# Formula: SI = (P * R * T) / 100
simple_interest=$(echo "scale=2; ($principal * $rate * $time) / 100" | bc)

# ── Calculate Total Amount ────────────────────────────
total_amount=$(echo "scale=2; $principal + $simple_interest" | bc)

# ── Display Results ───────────────────────────────────
echo ""
echo "================================================"
echo "                  RESULTS                      "
echo "================================================"
echo "Principal Amount : $principal"
echo "Rate of Interest : $rate%"
echo "Time Period      : $time year(s)"
echo "------------------------------------------------"
echo "Simple Interest  : $simple_interest"
echo "Total Amount     : $total_amount"
echo "================================================"
