module SearchHelper

	def get_sub_list(subjects)
	  my_courses = current_user().courses		
      if my_courses.length == 0
        return "Not registered for courses"
      end
      str = "<li>#{my_courses[0].name}</li> "
      # puts "*******#{my_courses[0]}"
	  count = 1
      while count < my_courses.length do
      	str+="<li>#{my_courses[count].name}</li>"
        count+=1;
      end
      str.html_safe
  	end

	def get_subject_list(subjects)
	  str = "['Mathematics', 'Mathematics'], ['COSI', 'COSI']"
      str.html_safe
  	end

end
