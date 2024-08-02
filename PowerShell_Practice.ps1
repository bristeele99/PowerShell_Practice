# Read numbers from a file
$lines = Get-Content -Path "C:\Users\brist\Documents\WebDevFolder\PowerShell\qzjggk1one.txt"

# Initialize a variable to keep track of the total sum
$totalSum = 0

# Loop through each line
foreach ($line in $lines) {
    # Extract numbers using regular expression
    $numbers = [regex]::Matches($line, '\d') | ForEach-Object { [int]$_.Value }

    # Check if numbers were found
    if ($numbers.Count -gt 0) {
        # Get the first number
        $firstNumber = $numbers[0]

        # Get the last number
        $lastNumber = $numbers[-1]

        # Concatenate and then make into string and then integer
        $concatenatedNumber = [INT]("$firstNumber$lastNumber")

        # Add the result to the total sum
        $totalSum += $concatenatedNumber
    } else {
        Write-Output "Error: No numbers found in line: $line"
    }
}

# Output the total sum
Write-Output "Total sum of the added numbers: $totalSum"
