module ApplicationHelper
=begin	
	def things_to_do
		<ul>
						<li><a href="#">Create Meals</a></li>
						<li><a href="#">Chat With Friends</a></li>
						<li><a href="#">Swap Recipes</a></li>
						<li><a href="#">Play Games</a></li>
						<li><a href="#">Buy Stuff</a></li>
						<li><a href="#">Trade Stuff</a></li>
					</ul>	
	end
=end
	def calendar ( month, year )
		#month = 02, year = 2013 
		#next_month = month + 1
		#prev_month = link_to "previous", page_calender_path(:month=>month.to_i - 1)
		prev_month = link_to "previous", calender_path(:month=>month.to_i - 1, :year => 2012)		
		cal_str   = "<table border='1'>\n"
		cal_str += "\t<tr><td>#{prev_month}</td><td colspan='6'>Months</td></tr>\n"
		cal_str += "\t<tr>"
		cal_str += "<td>&nbsp;</td>"
		6.times do |day|
			cal_str+= "<td> #{ day + 1 } </td>";
		end	
		cal_str += "</tr>\n"	
		cal_str += "</table>"
		return cal_str.html_safe
	end	
end
