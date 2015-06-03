package com.springapp.mvc.com.springapp.mvc.validator;

import com.springapp.mvc.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;
import java.lang.annotation.Annotation;

/**
 * Created by sachindra on 02/06/2015.
 */
public class UniqueUsername implements ConstraintValidator<UniqueUsernameValidator, String> {

    @Autowired
    private UserRepository userRepository;

    @Override
    public void initialize(UniqueUsernameValidator uniqueUsernameValidator) {

    }

    @Override
    public boolean isValid(String username, ConstraintValidatorContext constraintValidatorContext) {
        //called on PostConstruct only
        if(userRepository == null){
            return true;
        }

        return (userRepository.findByName(username) == null);
    }
}
