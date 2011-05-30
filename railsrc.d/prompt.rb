def setup_rails_irb_prompt
  dangerous_envs = %w(production)
  rails_env = ENV['RAILS_ENV']
  rails_env = rails_env.upcase if dangerous_envs.include?(rails_env)
    
  setup_custom_irb_prompt(File.basename(DETECTED_RAILS_ROOT) + " #{rails_env}")
end

setup_rails_irb_prompt