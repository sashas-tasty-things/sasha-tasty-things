# Replace all occurrences of "Sasha's Tasty Things" with "Sasha's Tasty Things" in files found by grep, handling filenames safely
grep -RIl "Sasha's Tasty Things" || true | while IFS= read -r f; do
  perl -pi -e "s/Sasha's Tasty Things/Sasha's Tasty Things/g" "$f"
  echo "Updated: $f"
done

# Show remaining occurrences (should be none)
grep -Rn "Sasha's Tasty Things" || true