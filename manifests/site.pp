# use hiera for node definition
lookup('classes', Array[String], 'unique').include
