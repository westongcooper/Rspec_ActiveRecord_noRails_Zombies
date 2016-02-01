describe Zombie do
  context 'when hungry' do
    it 'wants brains' do end
    context 'with a veggie preference', focus: true do
      it 'still craves brains' do end
      it 'prefers vegan brains', vegan: true do end
    end
  end
end


=begin
if the following settings are set in spec_helper.rb then only the test run that are
  set like the above with the tag `focus: true`.

config.filter_run focus: true
config.run_all_when_everything_filtered = true

or if you run rpsec with the specific tags you would like

$ rspec --tag focus
=end



describe Zombie do
  it 'goes slow', slow: true
end

=begin
You could also exclude specific tags from running

$ rspec --tag ~@slow

and include this in your config to always exclude the tag

config.filter_run_excluding slow: true

=end