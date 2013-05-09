# desc "Run JavaScript tests with PhantomJS"

require 'qunited/rake_task'

QUnited::RakeTask.new('test:javascript') do |t|
	t.server_port = 8888
	t.source_files = Dir["app/assets/javascripts/**/*.js"]
  t.test_files = 'test/javascripts/**/*.js'
  t.driver = :phantomjs
end