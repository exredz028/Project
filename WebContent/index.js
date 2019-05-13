    function calsPerDay() {
      function find(id) { return document.getElementById(id) }

      var age = find("age").value
      var height = find("height").value 
      var weight = find("weight").value 
      var result = 0
      if (find("male").checked) 
        result = 66.47 + (13.75 * weight) + (5.0 * height - (6.75 * age))
      else if (find("female").checked)
        result = 665.09 + (9.56 * weight) + (1.84 * height - (4.67 * age))
      find("totalCals").innerHTML = Math.round( result )
    }
    calsPerDay()