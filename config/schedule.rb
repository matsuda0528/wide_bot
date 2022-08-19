# Use this file to easily define all of your cron jobs.
#
# It's helpful, but not entirely necessary to understand cron before proceeding.
# http://en.wikipedia.org/wiki/Cron

# Example:
#
set :output, File.expand_path("../../log/cron_log.log", __FILE__)
env :PATH, ENV['PATH']

set :job_template, nil
job_type :exe, "cd :path && ruby exe/:task :output"
#
every 1.minute do
  exe "wide_bot"
end
#
# every 4.days do
#   runner "AnotherModel.prune_old_records"
# end

# Learn more: http://github.com/javan/whenever
