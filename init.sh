for hello in hello*
do
  echo "Running $hello..."
  chmod +x "$hello"
  # shellcheck disable=SC2086
  if "./$hello"; then
    echo "It worked! Bye"
    exit
  fi
done

echo "Failed?!"
exit 1
