package com.apex.bo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.apex.dao.LoginDAO;
import com.apex.model.User;
import com.apex.util.ApexUtility;
import com.apex.util.DayAheadUtility;

/**
 * Class for calling dao layer methods and utility class methods
 * 
 * @author mahesh
 * @version 1.0
 */
@Component
public class LoginBOImpl implements LoginBO {

	@Autowired
	LoginDAO loginDAO;

	/*
	 * class for getting LongTermPostion chart data
	 */
	@Autowired
	ApexUtility utility;
	/*
	 * class for getting DayAheadPosition chart data
	 */
	@Autowired
	DayAheadUtility dayUtility;

	/*
	 * method for getting user details
	 * 
	 * @see com.apex.bo.LoginBO#getUserDetails(java.lang.Long)
	 * 
	 * @param userId passing user unique id
	 * 
	 * @throws Exception
	 * 
	 * @returns User data
	 */
	@Override
	public User getUserDetails(Long userId) throws Exception {
		/*
		 * calling method to check the user authentication and getting user
		 * details.
		 */
		// Temporarily passing static value.
		User userData = loginDAO.getUserDetails(777);
		return userData;
	}

	/*
	 * Method for getting LongTermPostion chart details
	 * 
	 * @see com.apex.bo.LoginBO#getChartDetails(java.lang.String)
	 * 
	 * @param yearMonth passing year and month
	 * 
	 * @returns JSON String object
	 */
	@Override
	public String getChartDetails(String yearMonth) {
		/* calling utility methods for getting chart data */
		String chartDetails=null;
		if(yearMonth!=null)
		{
		chartDetails = utility.getChartDetailsFromJson(yearMonth);
		}

		return chartDetails;
	}

	/*
	 * Method for getting DayAheadPosition chart details
	 * 
	 * @see
	 * com.apex.bo.LoginBO#getDayAheadChartDetails(java.lang.String,java.lang
	 * .String)
	 * 
	 * @param dayValue passing particular day value
	 * 
	 * @param megaWattValue passing megaWattValue on that day
	 * 
	 * @returns JSON String object
	 */
	public String getDayAheadChartDetails(String dayValue, String megaWattValue) {
		/* calling utility methods for getting DayAheadPosition chart data */
		String chartDetails = dayUtility.getDayAheadChartDetailsFromJson(
				dayValue, megaWattValue);

		return chartDetails;

	}

}
