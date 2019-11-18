require "test_helper"

# DataStructureErrorImplTest.
# @abstract:
# Tests the DataStructureErrorImpl class.
class DataStructureErrorImplTest < Minitest::Test

  TEST_MESSAGE         = "Test."
  IMPLEMENTATION_CLASS = DataStructureErrorImpl

  # setup().
  # @abstract:
  # Prepare the tests.
  def setup()
    @test_message_initialized = DataStructureErrorImpl.new(TEST_MESSAGE)
    @default_initialied       = DataStructureErrorImpl.new()
  end

  # test_that_it_has_a_version_number().
  # @abstract:
  # Tests the version number was defined.
  def test_that_it_has_a_version_number()
    refute_nil ::DataStructureErrorImpl::VERSION
  end

  # test_test_message_initialized().
  # @abstract:
  # Test message initialized variables message attribute is the test message.
  def test_test_message_initialized()
    assert_equal(@test_message_initialized.message(), TEST_MESSAGE)
  end

  # test_default_initialized().
  # @abstract:
  # Default initialization's message attribute is the default message.
  def test_default_initialized()
    assert_equal(@default_initialized.message(), DEFAULT_MESSAGE)
  end

  # test_unacceptable_type_raises().
  # @abstract:
  # An unacceptable data structure argument raises an error.
  def test_unacceptable_type_raises()

    unacceptable         = 0
    error_implementation = DataStructureErrorImpl.new()
    assert_raises (IMPLEMENTATION_CLASS) {
      error_implementation.raise_exception(unacceptable)
    }

  end

end
