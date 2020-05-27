require_relative 'test_helper'

# DataStructureErrorTest.
# @class_description
#   Tests the DataStructureError implementation.
class DataStructureErrorTest < Minitest::Test

  # Constants.
  CLASS = DataStructureError

  # test_conf_doc_f_ex().
  # @description
  #   The .travis.yml, CODE_OF_CONDUCT.md, Gemfile, LICENSE.txt, README.md,
  #   .yardopts, .gitignore, Changelog.md, CODE_OF_CONDUCT.md,
  #   data_structure_error_impl.gemspec, Gemfile.lock, and Rakefile files exist.
  def test_conf_doc_f_ex()

    assert_path_exists('.travis.yml')
    assert_path_exists('CODE_OF_CONDUCT.md')
    assert_path_exists('Gemfile')
    assert_path_exists('LICENSE.txt')
    assert_path_exists('README.md')
    assert_path_exists('.yardopts')
    assert_path_exists('.gitignore')
    assert_path_exists('Changelog.md')
    assert_path_exists('CODE_OF_CONDUCT.md')
    assert_path_exists('data_structure_error_impl.gemspec')
    assert_path_exists('Gemfile.lock')
    assert_path_exists('Rakefile')

  end

  # test_version_declared().
  # @description
  #   The version was declared.
  def test_version_declared()
    refute_nil(CLASS::VERSION)
  end

  # setup().
  # @description
  #   Prepare the tests.
  def setup()

    @x1_data_1 = 'Test.'
    @x3_data_1 = 1
    @x_data_1  = 'Test.'

  end

  # initialize(message = DEFAULT_MESSAGE).

  # test_init_x1().
  # @description
  #   A String argument.
  def test_init_x1()

    error      = DataStructureError.new(@x1_data_1)
    expected_1 = @x1_data_1
    expected_2 = CLASS
    assert_same(expected_1, error.message())
    assert_same(expected_2, error.class())

  end

  # test_init_x2().
  # @description
  #   No arguments.
  def test_init_x2()

    error      = DataStructureError.new()
    expected_1 = CLASS
    expected_2 = CLASS::DEFAULT_MESSAGE
    assert_same(expected_1, error.class())
    assert_same(expected_2, error.message())

  end

  # test_init_x3().
  # @description
  #   An invalid argument.
  def test_init_x3()

    expected_1 = TypeError
    assert_raises(expected_1) {
      DataStructureError.new(@x3_data_1)
    }

  end

  # message().

  # test_m_x().
  # @description
  #   The returned message is the same String message was initialized.
  def test_m_x()

    error      = DataStructureError.new(@x_data_1)
    expected_1 = @x_data_1
    assert_same(expected_1, error.message())

  end

  # teardown().
  # @description
  #   Cleans.
  def teardown()
  end

end
