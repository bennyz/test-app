#!/bin/bash
echo "Running tests..."
python -m pytest test_app.py -v
TEST_EXIT_CODE=$?

if [ $TEST_EXIT_CODE -eq 0 ]
then
  echo "Tests passed! Image will be published."
  exit 0
else
  echo "Tests failed! Image will NOT be published."
  exit 1
fi
