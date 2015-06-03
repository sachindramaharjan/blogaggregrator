package com.springapp.mvc.com.springapp.mvc.validator;

import javax.validation.Constraint;
import javax.validation.Payload;
import java.lang.annotation.*;

/**
 * Created by sachindra on 02/06/2015.
 */
@Target({ElementType.FIELD})
@Retention(RetentionPolicy.RUNTIME)
@Documented
@Constraint(
        validatedBy = {UniqueUsername.class}
)
public @interface UniqueUsernameValidator {
    String message();

    Class<?>[] groups() default {};

    Class<? extends Payload>[] payload() default {};
}
