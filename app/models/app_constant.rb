module AppConstant

	HISTORY = 1
 	CURRENTAFFAIR = 2
 	TECHNOLOGY = 3
 	FAMOUSPLACES = 4
 	CULTURE = 5

 	QuesType = [["History", HISTORY], ["Current Affair", CURRENTAFFAIR], ["Technology", TECHNOLOGY], ["Famous Places", FAMOUSPLACES], ["Culture", CULTURE]]
end
class Array
  # Use this function only for Two Dimensional Arrays
  def get_by_key_from_2d_array(idx)
    each {|x| return x[0] if (x[1] == idx)} 
    return ""
  end
end