/*需要先引用
			<script src="js/city.js"></script>
		*/

function _testInit() {
		//行业选择框1
		var citySelectId = "#chooseLocation";
		//行业选择框2
		var countySelectId = "#countrySelect";
		
		//加载
		initChooseLocation(citySelectId, countySelectId);

	}

	function initChooseLocation(citySelectId, countySelectId) {
		var locationList = $(citySelectId);

		for (var i in citys) {
			var city = citys[i];
			var county = $("<option id='" + i + "' value='" + city.code + "'>" + city.name + "</option>");
			locationList.append(county);
		}
		
		$(citySelectId).change(function() {
					var cityIndex = $(this).children('option:selected').attr("id");
					city = citys[cityIndex];
					console.log(city);
					var countyDiv = $(countySelectId);
					countyDiv.html("");
					var countys = city.subLevelModelList;
					console.log(countys);
					for (var i in countys) {
						var city = countys[i];
						var county = $("<option id='" + i + "' value='" + city.code + "'>" + city.name + "</option>");
						countyDiv.append(county);
					}
				});
		
				$(countySelectId).change(function() {
					var value = $(this).val();
					console.log(value);
				});


	}

