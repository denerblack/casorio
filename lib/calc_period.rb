require 'date'

class CalcPeriod
	DAYS_IN_MONTH  = [nil, 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]

	# This method takes a difference between two dates
	# the person's age.
	def self.time_diff(initial_date, final_date)
		borrowed_month = false

		# Get days for this year
		if final_date.to_date.leap?
			DAYS_IN_MONTH[2] = 29
		end

		day   = final_date.day - initial_date.day
		month = final_date.month - initial_date.month
		year  = final_date.year - initial_date.year

		if day < 0
			# subtract month, get positive # for day
			day = DAYS_IN_MONTH[initial_date.month] - initial_date.day + final_date.day
			month -= 1
			borrowed_month = true
		end

		if month < 0
			# subtract year, get positive # for month
			month = 12 - initial_date.month + final_date.month
			if borrowed_month == true
				month -= 1
			end
			year -= 1
		end

		# Error-handling for future date
		if year < 0
			year, month, day = 0, 0, 0
		end

		{year: year, month: month, day: day}
	end
end
