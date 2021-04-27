# 1. Boolean Assertions

def test_odd?
  assert value.odd?, 'value is not odd'
end

def test_odd?
  assert_equal(true, value.odd?), 'value is not odd'
end

# 2. Equality Assertions

def test_downcase
  assert_equal('xyz', value.downcase)
end

# 3. Nil Assertions

def test_nil?
  assert_nil value
end

# 4. Empty Object Assertions

def test_empty?
  assert_empty list
end

# 5. Included Object Assertions

def test_include?
  assert_includes list, 'xyz'
end

# 6. Exception assertion

assert_raises(NoExperienceError) { employee.hire }

# 7. Type Assertion

assert_instance_of Numeric, value

# 8. Kind Assertion

assert_kind_of Numeric, value

# 9. Same Object Assertions

assert_same list, list.process

# 10. Refutations

refute_includes list, 'xyz'
