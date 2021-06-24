for hello in hello*
do
  chmod +x "$hello"
  # shellcheck disable=SC2086
  if "./$hello" 2> /dev/null; then
    echo "It worked! Bye"
    exit
  fi
done

echo "Failed?!"
exit 1
