<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript" src="js/jquery-1.8.2.min.js"></script>

<script type="text/javascript">
	$(function() {
		ranges = [ [Date.UTC(2013, 6, 1), 5100.3, 11700.3], [Date.UTC(2013, 6, 2), 5100.3, 10700.3],
		           [Date.UTC(2013, 6, 3), 5100.3, 10700.3], [Date.UTC(2013, 6, 4), 5100.3, 10700.3],
		           [Date.UTC(2013, 6, 5), 4700.3, 10700.3], [Date.UTC(2013, 6, 6), 4500.3, 10700.3],
		           [Date.UTC(2013, 6, 7), 5100.3, 11000.3], [Date.UTC(2013, 6, 8), 5100.3, 10700.3],
		           [Date.UTC(2013, 6, 9), 5700.3, 10500.3],  [Date.UTC(2013, 6, 10), 5700.3, 10700.3 ],
		           [Date.UTC(2013, 6, 11), 5100.3, 10800.3], [Date.UTC(2013, 6, 12), 5100.3, 10900.3 ],
		           [Date.UTC(2013, 6, 13), 5100.3, 10700.3], [Date.UTC(2013, 6, 14), 5100.3, 11200.3 ],
		           [Date.UTC(2013, 6, 15), 5100.3, 11500.3], [Date.UTC(2013, 6, 16), 5100.3, 11700.3 ],
		           [Date.UTC(2013, 6, 17), 6300.3, 11500.3],  [Date.UTC(2013, 6, 18), 6500.3, 11300.3 ],
		           [Date.UTC(2013, 6, 19), 6500.3, 10700.3],  [Date.UTC(2013, 6, 20), 6300.3, 10700.3 ],
		           [Date.UTC(2013, 6, 21), 5900.3, 10600.3],  [Date.UTC(2013, 6, 22), 5700.3, 10700.3 ],
		           [Date.UTC(2013, 6, 23), 6100.3, 10800.3], [Date.UTC(2013, 6, 24), 6100.3, 10800.3 ],
		           [Date.UTC(2013, 6, 25), 6600.3, 10900.3],  [Date.UTC(2013, 6, 26), 6100.3, 10700.3 ],
		           [Date.UTC(2013, 6, 27), 5700.3, 10700.3],  [Date.UTC(2013, 6, 28), 5700.3, 10700.3 ],
		           [Date.UTC(2013, 6, 29), 6100.3, 10800.3],  [Date.UTC(2013, 6, 30), 6100.3, 10700.3 ],
		           [Date.UTC(2013, 6, 31), 6100.3, 10800.3 ]];

		averages = [  [Date.UTC(2013, 6, 1), 5100.3], [Date.UTC(2013, 6, 2), 5500.3],
					  [Date.UTC(2013, 6, 3), 6100.3], [Date.UTC(2013, 6, 4), 7100.3], 
					  [Date.UTC(2013, 6, 5), 5100.3], [Date.UTC(2013, 6, 6), 4100.3], 
					  [Date.UTC(2013, 6, 7), 5100.3], [Date.UTC(2013, 6, 8), 8100.3], 
					  [Date.UTC(2013, 6, 9), 6700.3], [Date.UTC(2013, 6, 10), 6700.3],
					  [Date.UTC(2013, 6, 11), 7100.3], [Date.UTC(2013, 6, 12), 9100.3], 
					  [Date.UTC(2013, 6, 13), 5100.3], [Date.UTC(2013, 6, 14), 5500.3], 
					  [Date.UTC(2013, 6, 15), 6100.3], [Date.UTC(2013, 6, 16), 7100.3], 
					  [Date.UTC(2013, 6, 17), 5100.3], [Date.UTC(2013, 6, 18), 4100.3],
					  [Date.UTC(2013, 6, 19), 5100.3], [Date.UTC(2013, 6, 20), 8100.3], 
					  [Date.UTC(2013, 6, 21), 6700.3], [Date.UTC(2013, 6, 22), 6700.3], 
					  [Date.UTC(2013, 6, 23), 7100.3], [Date.UTC(2013, 6, 24), 9100.3],
					  [Date.UTC(2013, 6, 25), 5100.3], [Date.UTC(2013, 6, 26), 5500.3], 
					  [Date.UTC(2013, 6, 27), 6100.3], [Date.UTC(2013, 6, 28), 7100.3], 
					  [Date.UTC(2013, 6, 29), 7300.3], [Date.UTC(2013, 6, 30), 7400.3],
					  [Date.UTC(2013, 6, 31), 7500.3]];
		
		Stack1 = [ [Date.UTC(2013, 6, 1),4900.3], [Date.UTC(2013, 6, 2),4900.3],
		              [Date.UTC(2013, 6, 3),4900.3], [Date.UTC(2013, 6, 4),4900.3], 
		              [Date.UTC(2013, 6, 5),4900.3], [Date.UTC(2013, 6, 6),4900.3],
		              [Date.UTC(2013, 6, 7),4900.3], [Date.UTC(2013, 6, 8),4900.3], 
		              [Date.UTC(2013, 6, 9),4900.3], [Date.UTC(2013, 6, 10),4900.3], 
		              [Date.UTC(2013, 6, 11),4900.3], [Date.UTC(2013, 6, 12),4900.3], 
		              [Date.UTC(2013, 6, 13),4900.3], [Date.UTC(2013, 6, 14),4900.3], 
		              [Date.UTC(2013, 6, 15),4900.3], [Date.UTC(2013, 6, 16),4900.3], 
		              [Date.UTC(2013, 6, 17),4900.3], [Date.UTC(2013, 6, 18),4900.3],
		              [Date.UTC(2013, 6, 19),4900.3], [Date.UTC(2013, 6, 20),4900.3], 
		              [Date.UTC(2013, 6, 21),4900.3], [Date.UTC(2013, 6, 22),4900.3], 
		              [Date.UTC(2013, 6, 23),4900.3], [Date.UTC(2013, 6, 24),4900.3],
		              [Date.UTC(2013, 6, 25),4900.3], [Date.UTC(2013, 6, 26),4900.3],
		              [Date.UTC(2013, 6, 27),4900.3], [Date.UTC(2013, 6, 28),4900.3],
		              [Date.UTC(2013, 6, 29),4900.3], [Date.UTC(2013, 6, 30),4900.3],
		              [Date.UTC(2013, 6, 31),4900.3]];
		Stack2 = [[Date.UTC(2013, 6, 1),  5200.3], [Date.UTC(2013, 6, 2),5200.3],
		              [Date.UTC(2013, 6, 3),5200.3], [Date.UTC(2013, 6, 4),5200.3], 
		              [Date.UTC(2013, 6, 5),5200.3], [Date.UTC(2013, 6, 6),5200.3],
		              [Date.UTC(2013, 6, 7),5200.3], [Date.UTC(2013, 6, 8),5200.3], 
		              [Date.UTC(2013, 6, 9),5200.3], [Date.UTC(2013, 6, 10),5200.3], 
		              [Date.UTC(2013, 6, 11),5200.3], [Date.UTC(2013, 6, 12),5200.3], 
		              [Date.UTC(2013, 6, 13),5200.3], [Date.UTC(2013, 6, 14),5200.3], 
		              [Date.UTC(2013, 6, 15),5200.3], [Date.UTC(2013, 6, 16),5200.3], 
		              [Date.UTC(2013, 6, 17),5200.3], [Date.UTC(2013, 6, 18),5200.3],
		              [Date.UTC(2013, 6, 19),5200.3], [Date.UTC(2013, 6, 20),5200.3], 
		              [Date.UTC(2013, 6, 21),5200.3], [Date.UTC(2013, 6, 22),5200.3], 
		              [Date.UTC(2013, 6, 23),5200.3], [Date.UTC(2013, 6, 24),5200.3],
		              [Date.UTC(2013, 6, 25),5200.3], [Date.UTC(2013, 6, 26),5200.3],
		              [Date.UTC(2013, 6, 27),5200.3], [Date.UTC(2013, 6, 28),5200.3],
		              [Date.UTC(2013, 6, 29),5200.3], [Date.UTC(2013, 6, 30),5200.3],
		              [Date.UTC(2013, 6, 31),5200.3] ];
		line=[ [Date.UTC(2013, 6, 1),13500.0],[Date.UTC(2013, 6, 2),14000.3], 
		       [Date.UTC(2013, 6, 3),12000.3],[Date.UTC(2013, 6, 4),13500.3],
		       [Date.UTC(2013, 6, 5),13500.3],[Date.UTC(2013, 6, 6),12500.3], 
		       [Date.UTC(2013, 6, 7),14000.3],[Date.UTC(2013, 6, 8),13500.3], 
		       [Date.UTC(2013, 6, 9),13800.3],[Date.UTC(2013, 6, 10),13600.3], 
		       [Date.UTC(2013, 6, 11),13700.3],[Date.UTC(2013, 6, 12),13400.3],
		       [Date.UTC(2013, 6, 13),14000.0],[Date.UTC(2013, 6, 14), 9000.3], 
		       [Date.UTC(2013, 6, 15),13000.3],[Date.UTC(2013, 6, 16), 13500.3],
		       [Date.UTC(2013, 6, 17),5000.3],[Date.UTC(2013,  6, 18),13500.3], 
		       [Date.UTC(2013, 6, 19),14000.3],[Date.UTC(2013, 6, 20),13500.3], 
		       [Date.UTC(2013, 6, 21),13800.3],[Date.UTC(2013, 6, 22),13600.3],
		       [Date.UTC(2013, 6, 23),13700.3],[Date.UTC(2013, 6, 24),13400.3], 
		       [Date.UTC(2013, 6, 25),14000.0],[Date.UTC(2013, 6, 26), 9000.3],
		       [Date.UTC(2013, 6, 27),13000.3],[Date.UTC(2013, 6, 28),13500.3],
		       [Date.UTC(2013, 6, 29),13500.3],[Date.UTC(2013, 6, 30),13500.3],
		       [Date.UTC(2013, 6, 31),13500.3]];

		$('#container').highcharts(
				{
					chart : {
					//zoomType : 'xy'
					},
					title : {
						text : 'Position'
					},
					subtitle : {
					//text : 'Source: WorldClimate.com'
					},        
					legend: {
						title:{
						text: 'Legend'},
			            layout: 'vertical',
			            align: 'right',
			            verticalAlign: 'top',
			            y: 50,
			            padding: 3,
			            itemMarginTop: 5,
			            itemMarginBottom: 5,
			            itemStyle: {
			            	lineHeight: '14px'
			            }
			        },
					xAxis : [{ 

						type: "datetime",
						dateTimeLabelFormats: {  
							day: '%e' ,  
							},
						tickInterval: 24 * 3600 * 1000,
					    min: Date.UTC(2013, 6, 1),
					    max: Date.UTC(2013, 6, 31),
					    plotBands: [{ // mark the Holiday
				            color: '#FCFFC5',
				            from:Date.UTC(2013, 6, 4),
				            to: Date.UTC(2013,6, 4),
				            zIndex: 3,
				            label: {
			                    text: 'Holiday',
			                    rotation: 90,
			                    textAlign: 'left'
			                }
				        },{ // mark the weekend
				            color: '#FCFFC5',
				            from:Date.UTC(2013, 6, 6),
				            to: Date.UTC(2013,6, 7),
				            zIndex: 3,
				            label: {
			                    text: 'Weekend',
			                    rotation: 90,
			                    textAlign: 'left'
			                }
				        },
				        { // mark the weekend
				            color: '#FCFFC5',
				            from:Date.UTC(2013, 6, 13),
				            to: Date.UTC(2013,6, 14),
				            zIndex: 3,
				            label: {
			                    text: 'Weekend',
			                    rotation: 90,
			                    textAlign: 'left'
			                }
				        },{ // mark the weekend
				            color: '#FCFFC5',
				            from:Date.UTC(2013, 6, 20),
				            to: Date.UTC(2013,6, 21),
				            zIndex: 3,
				            label: {
			                    text: 'Weekend',
			                    rotation: 90,
			                    textAlign: 'left'
			                }
				        },{ // mark the weekend
				            color: '#FCFFC5',
				            from:Date.UTC(2013, 6, 27),
				            to: Date.UTC(2013,6, 28),
				            zIndex: 3,
				            label: {
			                    text: 'Weekend',
			                    rotation: 90,
			                    textAlign: 'left'
			                }
				        }]
					} ],
					yAxis : [ { // Primary yAxis
						labels : {
							format : '{value}',
							style : {
								color : '#89A54E'
							}
						},
						title : {
							text : 'Megawatts',
							style : {
								color : '#89A54E'
							}
						},
						min : 4000,
						max : 13000
					} ],
/* 
	                plotLines: [{
	                    value: 0,
	                    width: 1,
	                    color: '#808080'
	                }],
	            tooltip: {
	                valueSuffix: 'MW'
	            }, */ 
					tooltip : {
						shared : true,
						 valueSuffix: 'MW'
					}, 
					plotOptions : {
						column : {
							stacking : 'normal',
						},
						spline : {
							lineWidth : 4,
							states : {
								hover : {
									lineWidth : 5
								}
							},
							marker : {
								enabled : false
							}
						},

					},
					series : [ {
						type : 'column',
						name : 'Stack1',
						data : Stack1,
						color : 'green',
						pointWidth : 15,
						cursor: 'pointer',
						events: {
		                    click: function(event) {
		                        //alert(this.name);
		                        test();
		                        }
						}

					}
					,{
						type : 'column',
						name : 'Stack2',
						data : Stack2,
						color : 'pink',
						pointWidth : 15,
						events: {
		                    click: function(event) {
		                        //alert(this.name);
		                        test();
		                        }
						}

					}
					, {
						type : 'spline',
						name : 'Area',
						data : averages,
						lineWidth : 1,
						zIndex : 1,
						marker : {
							fillColor : 'white',
							lineWidth : 2,
							lineColor : Highcharts.getOptions().colors[0]
						},
				
					}, {
						name : 'Range',
						data : ranges,
						type : 'arearange',
						lineWidth : 0,
						linkedTo : ':previous',
						color : Highcharts.getOptions().colors[0],
						fillOpacity : 0.3,
						zIndex : 0,
						events: {
		                    click: function(event) {
		                        //alert(this.name);
		                        test();
		                        }
						}
					},{
						type : 'spline',
						name : 'Line',
						data : line,
						lineWidth : 1,
						color : 'red',

					} ]
				});
	});
</script>
<script>
function test(){
	//alert('test');
	$(function() {
		ranges = [ [Date.UTC(2013, 6, 1), 6100.3, 9700.3], [Date.UTC(2013, 6, 2), 6100.3, 9500.3],
		           [Date.UTC(2013, 6, 3), 6200.3, 9400.3], [Date.UTC(2013, 6, 4), 6100.3, 9200.3],
		           [Date.UTC(2013, 6, 5), 5700.3, 9000.3], [Date.UTC(2013, 6, 6), 5500.3, 8700.3],
		           [Date.UTC(2013, 6, 7), 5400.3, 8000.3], [Date.UTC(2013, 6, 8), 5500.3, 8100.3],
		           [Date.UTC(2013, 6, 9), 5700.3, 8200.3], [Date.UTC(2013, 6, 10), 5700.3, 8300.3 ],
		           [Date.UTC(2013, 6, 11), 6000.3, 8500.3], [Date.UTC(2013, 6, 12), 6400.3, 9000.3 ],
		           [Date.UTC(2013, 6, 13), 6700.3, 10700.3], [Date.UTC(2013, 6, 14), 6900.3, 11700.3 ],
		           [Date.UTC(2013, 6, 15), 7000.3, 11500.3], [Date.UTC(2013, 6, 16), 7100.3, 11200.3 ],
		           [Date.UTC(2013, 6, 17), 7300.3, 11000.3],  [Date.UTC(2013, 6, 18), 8000.3, 11700.3 ],
		           [Date.UTC(2013, 6, 19), 7100.3, 11700.3],  [Date.UTC(2013, 6, 20), 7500.3, 11400.3 ],
		           [Date.UTC(2013, 6, 21), 7700.3, 10700.3],  [Date.UTC(2013, 6, 22), 7300.3, 10400.3 ],
		           [Date.UTC(2013, 6, 23), 7400.3, 10000.3], [Date.UTC(2013, 6, 24), 7800.3, 9700.3 ]];

		averages = [  [Date.UTC(2013, 6, 1),8200.0],[Date.UTC(2013, 6, 2),7500.3], 
				       [Date.UTC(2013, 6, 3),7100.3],[Date.UTC(2013, 6, 4),6900.3],
				       [Date.UTC(2013, 6, 5),6500.3],[Date.UTC(2013, 6, 6),6100.3], 
				       [Date.UTC(2013, 6, 7),5300.3],[Date.UTC(2013, 6, 8),5500.3], 
				       [Date.UTC(2013, 6, 9),5700.3],[Date.UTC(2013, 6, 10),5900.3], 
				       [Date.UTC(2013, 6, 11),6000.3],[Date.UTC(2013, 6, 12),6800.3],
				       [Date.UTC(2013, 6, 13),8000.0],[Date.UTC(2013, 6, 14), 10100.3], 
				       [Date.UTC(2013, 6, 15),10200.3],[Date.UTC(2013, 6, 16), 10500.3],
				       [Date.UTC(2013, 6, 17),10500.3],[Date.UTC(2013,  6, 18),10700.3], 
				       [Date.UTC(2013, 6, 19),9800.3],[Date.UTC(2013, 6, 20),9400.3], 
				       [Date.UTC(2013, 6, 21),9100.3],[Date.UTC(2013, 6, 22),9300.3],
				       [Date.UTC(2013, 6, 23),9000.3],[Date.UTC(2013, 6, 24),8500.3]];
		
		Stack1 = [ [Date.UTC(2013, 6, 1),8000.3], [Date.UTC(2013, 6, 2),8000.3],
		              [Date.UTC(2013, 6, 3),8000.3], [Date.UTC(2013, 6, 4),8000.3], 
		              [Date.UTC(2013, 6, 5),8000.3], [Date.UTC(2013, 6, 6),8000.3],
		              [Date.UTC(2013, 6, 7),8000.3], [Date.UTC(2013, 6, 8),10000.3], 
		              [Date.UTC(2013, 6, 9),10000.3], [Date.UTC(2013, 6, 10),10000.3], 
		              [Date.UTC(2013, 6, 11),10000.3], [Date.UTC(2013, 6, 12),10000.3], 
		              [Date.UTC(2013, 6, 13),10000.3], [Date.UTC(2013, 6, 14),10000.3], 
		              [Date.UTC(2013, 6, 15),10000.3], [Date.UTC(2013, 6, 16),10000.3], 
		              [Date.UTC(2013, 6, 17),10000.3], [Date.UTC(2013, 6, 18),10000.3],
		              [Date.UTC(2013, 6, 19),10000.3], [Date.UTC(2013, 6, 20),10000.3], 
		              [Date.UTC(2013, 6, 21),10000.3], [Date.UTC(2013, 6, 22),10000.3], 
		              [Date.UTC(2013, 6, 23),10000.3], [Date.UTC(2013, 6, 24),8000.3]];
		
		Stack2 = [[Date.UTC(2013, 6, 1),  5200.3], [Date.UTC(2013, 6, 2),5200.3],
		              [Date.UTC(2013, 6, 3),5200.3], [Date.UTC(2013, 6, 4),5200.3], 
		              [Date.UTC(2013, 6, 5),5200.3], [Date.UTC(2013, 6, 6),5200.3],
		              [Date.UTC(2013, 6, 7),5200.3], [Date.UTC(2013, 6, 8),5200.3], 
		              [Date.UTC(2013, 6, 9),5200.3], [Date.UTC(2013, 6, 10),5200.3], 
		              [Date.UTC(2013, 6, 11),5200.3], [Date.UTC(2013, 6, 12),5200.3], 
		              [Date.UTC(2013, 6, 13),5200.3], [Date.UTC(2013, 6, 14),5200.3], 
		              [Date.UTC(2013, 6, 15),5200.3], [Date.UTC(2013, 6, 16),5200.3], 
		              [Date.UTC(2013, 6, 17),5200.3], [Date.UTC(2013, 6, 18),5200.3],
		              [Date.UTC(2013, 6, 19),5200.3], [Date.UTC(2013, 6, 20),5200.3], 
		              [Date.UTC(2013, 6, 21),5200.3], [Date.UTC(2013, 6, 22),5200.3], 
		              [Date.UTC(2013, 6, 23),5200.3], [Date.UTC(2013, 6, 24),5200.3]];
		
		line=[ [Date.UTC(2013, 6, 1),9000.0],[Date.UTC(2013, 6, 2),8000.3], 
		       [Date.UTC(2013, 6, 3),7700.3],[Date.UTC(2013, 6, 4),7500.3],
		       [Date.UTC(2013, 6, 5),7000.3],[Date.UTC(2013, 6, 6),6500.3], 
		       [Date.UTC(2013, 6, 7),6300.3],[Date.UTC(2013, 6, 8),6500.3], 
		       [Date.UTC(2013, 6, 9),6700.3],[Date.UTC(2013, 6, 10),7000.3], 
		       [Date.UTC(2013, 6, 11),8700.3],[Date.UTC(2013, 6, 12),10000.3],
		       [Date.UTC(2013, 6, 13),11000.0],[Date.UTC(2013, 6, 14), 12000.3], 
		       [Date.UTC(2013, 6, 15),13000.3],[Date.UTC(2013, 6, 16), 13500.3],
		       [Date.UTC(2013, 6, 17),13500.3],[Date.UTC(2013,  6, 18),13300.3], 
		       [Date.UTC(2013, 6, 19),13000.3],[Date.UTC(2013, 6, 20),12800.3], 
		       [Date.UTC(2013, 6, 21),12600.3],[Date.UTC(2013, 6, 22),12000.3],
		       [Date.UTC(2013, 6, 23),10000.3],[Date.UTC(2013, 6, 24),9400.3]];

		$('#container').highcharts(
				{
					chart : {
					//zoomType : 'xy'
					},
					title : {
						text : 'Position'
					},
					subtitle : {
					//text : 'Source: WorldClimate.com'
					},
				      legend: {
							title:{
							text: 'Legend'},
				            layout: 'vertical',
				            align: 'right',
				            verticalAlign: 'top',
				            y: 50,
				            padding: 3,
				            itemMarginTop: 5,
				            itemMarginBottom: 5,
				            itemStyle: {
				            	lineHeight: '14px'
				            }
				        },
					xAxis : [{ // Primary xAxis

						type: "datetime",
						dateTimeLabelFormats: {  
							day: '%e' ,  
							},
						tickInterval: 24 * 3600 * 1000,
					    min: Date.UTC(2013, 6, 1),
					    max: Date.UTC(2013, 6, 24)
					} ],
					yAxis : [ { // Primary yAxis
						labels : {
							format : '{value}',
							style : {
								color : '#89A54E'
							}
						},
						title : {
							text : 'Megawatts',
							style : {
								color : '#89A54E'
							}
						},
						min : 4000,
						max : 13000
					} ],
					tooltip : {
			                shared : true,
					},
					plotOptions : {/* 
						column : {
							stacking : 'normal',
						}, */
						spline : {
							lineWidth : 4,
							states : {
								hover : {
									lineWidth : 5
								}
							},
							marker : {
								enabled : false
							}
						},

					},
					series : [ {
						type : 'column',
						name : 'Stack1',
						data : Stack1,
						color : 'lightgreen',
						pointWidth : 25,

					}/* 
					,{
						type : 'column',
						name : 'Stack2',
						data : Stack2,
						color : 'pink',
						pointWidth : 25,
						events: {
		                    click: function(event) {
		                        alert(this.name);
		                        test();
		                        }
						}

					} */
					, {
						type : 'spline',
						name : 'Area',
						data : averages,
						lineWidth : 1,
						zIndex : 1,
						marker : {
							fillColor : 'white',
							lineWidth : 2,
							lineColor : Highcharts.getOptions().colors[0]
						},
				
					}, {
						name : 'Range',
						data : ranges,
						type : 'arearange',
						lineWidth : 0,
						linkedTo : ':previous',
						color : Highcharts.getOptions().colors[0],
						fillOpacity : 0.3,
						zIndex : 0,
						events: {
		                    click: function(event) {
		                        //alert(this.name);
		                        test();
		                        }
						}
					},{
						type : 'spline',
						name : 'Line',
						data : line,
						lineWidth : 1,
						color : 'red',

					} ]
				});
	});
}
</script>
</head>
<body>

	<script src="js/highcharts.js"></script>
	<script src="js/highcharts-more.js"></script>
	<script src="js/exporting.js"></script>
	<div id="container"
		style="min-width: 310px; height: 400px; margin: 0 auto"></div>
		

</body>
</html>