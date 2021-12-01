require 'simplecov'
Pathname.new(__FILE__).join('..','..','coverage').tap do |cov|
  # clear old coverage results
  FileUtils.rm_rf cov if cov.exist?
end




SimpleCov.start('rails')
SimpleCov.coverage_dir ENV.fetch('BASHCOV_COVERAGE_DIR', 'coverage')).