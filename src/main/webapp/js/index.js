//首页初始化
$(function(){
		//初始化地区
		initLocation();
		initPosition();
});

//根据 城市代码获取城市名称
function getCityName(key){
	var re = getNameByCode(citys,key);
	return re==null?"其他地区":re;
}
//根据 职位代码获取职位类型
function getPositionName(key){
	var re = getNameByCode(positions,key);
	return re==null?"其他职业":re;
}
//根据学历代码获取学历
function getEducation(key){
	console.log(key);
	var edu=getEducationNumber(key);
	return edu==null?"无要求":edu;
}

function getEducationNumber(key){
	for(var i in education){
		if(key == education[i].code)
			return education[i].name;
	}
}

function getNameByCode(arr,code){
	for(var i in arr){
		var city = arr[i];

		if(city.subLevelModelList != null){
			for(var i in city.subLevelModelList){
				var tem = city.subLevelModelList[i];
			
				//console.log(tem.code);
				if(code == tem.code){
					return tem.name;
				}
			}
		}
	}
	return null;
}



function initLocation(){
	var locationList = $("#search-location");
	for(var i in citys){
		var city = citys[i];
		locationList.append("<option value='" +city.code+"'>"+city.name+"</option>");
	}
	
}


function initPosition(){
	var positionList = $("#search-category");
	var jobCat = $("#job-categories");
    
	for(var i in positions){
		var city = positions[i];
		positionList.append("<option value='" +city.code+"'>"+city.name+"</option>");
		jobCat.append("<li><a href='positionList?type="+city.code+"'> " +city.name + "<span>(职位数)</span></a></li>");
	}
}

$('.form').find('input, textarea').on('keyup blur focus', function (e) {
  
  var $this = $(this),
      label = $this.prev('label');

	  if (e.type === 'keyup') {
			if ($this.val() === '') {
          label.removeClass('active highlight');
        } else {
          label.addClass('active highlight');
        }
    } else if (e.type === 'blur') {
    	if( $this.val() === '' ) {
    		label.removeClass('active highlight'); 
			} else {
		    label.removeClass('highlight');   
			}   
    } else if (e.type === 'focus') {
      
      if( $this.val() === '' ) {
    		label.removeClass('highlight'); 
			} 
      else if( $this.val() !== '' ) {
		    label.addClass('highlight');
			}
    }

});

$('.tab a').on('click', function (e) {
  
  e.preventDefault();
  
  $(this).parent().addClass('active');
  $(this).parent().siblings().removeClass('active');
  
  target = $(this).attr('href');

  $('.tab-content > div').not(target).hide();
  
  $(target).fadeIn(600);
  
});