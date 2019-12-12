require "test_helper"

# DataStructureErrorImplTest.
# @abstract:
# Tests the DataStructureErrorImpl class.
class DataStructureErrorImplTest < Minitest::Test

  include DataStructureErrorImplHelper

  TEST_MESSAGE = "Test."

  # setup().
  # @abstract:
  # Prepare the tests.
  def setup()
    @test_message_initialized = DataStructureErrorImpl.new(TEST_MESSAGE)
    @default_initialized      = DataStructureErrorImpl.new()
  end

  # test_that_it_has_a_version_number().
  # @abstract:
  # Tests the version number was defined.
  def test_that_it_has_a_version_number()
    refute_nil ::DataStructureErrorImpl::VERSION
  end

  # test_nil_argument_returns_default().
  # @abstract:
  # A nil argument returns the DEFAULT_MESSAGE.
  def test_nil_argument_returns_default()

    argument      = nil
    return_object = choose(argument)
    assert_equal(DataStructureErrorImpl::DEFAULT_MESSAGE, return_object)

  end

  # test_string_argument_returns_string_argument().
  # @abstract:
  # A String argument returns the same String argument.
  def test_string_argument_returns_string_argument()

    argument = ''
    choice   = choose(argument)
    assert_equal(argument, choice)

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
    assert_equal(@default_initialized.message(),
                 DataStructureErrorImpl::DEFAULT_MESSAGE)
  end

  # test_unacceptable_type_raises().
  # @abstract:
  # An unacceptable data structure argument raises an error.
  def test_unacceptable_type_raises()

    unacceptable         = 0
    assert_raises (DataStructureErrorImpl::INTERFACE_NAME) {
      @default_initialized.raise_exception(unacceptable)
    }

  end

end
