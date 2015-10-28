class Japp < ActiveRecord::Base
	belongs_to :job

	STAGES = %w[applied called interviewed hired rejected offered]


end
