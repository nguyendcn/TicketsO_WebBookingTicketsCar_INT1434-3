package com.ptithcm.models;

import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;


@Component
public class UserInfoValidator implements Validator{


	
	 @Override
	  public boolean supports(Class<?> aClass) {
	    return aClass.equals(UserInfo.class);
	  }

	  @Override
	  public void validate(Object o, Errors errors) {

	    UserInfo user = (UserInfo) o;

	    // Check User
	    ValidationUtils.rejectIfEmptyOrWhitespace(errors, "username","NotEmpty.userInfo.username");
	    ValidationUtils.rejectIfEmptyOrWhitespace(errors, "password","NotEmpty.userInfo.password");

	  }

}
