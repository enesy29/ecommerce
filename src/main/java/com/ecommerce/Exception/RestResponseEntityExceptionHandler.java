package com.ecommerce.Exception;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.context.request.WebRequest;
import org.springframework.web.servlet.mvc.method.annotation.ResponseEntityExceptionHandler;

@ControllerAdvice
public class RestResponseEntityExceptionHandler extends ResponseEntityExceptionHandler {

    @ExceptionHandler(value = { UserNotFoundException.class, UserNotFoundException.class })
    protected ResponseEntity<ErrorDescription> handleConflict(UserNotFoundException ex, WebRequest request) {
        ErrorDescription bodyOfResponse = new ErrorDescription();
        bodyOfResponse.setMessage(ex.getMessage());
        bodyOfResponse.setCode(1200);
        return new ResponseEntity<ErrorDescription>(bodyOfResponse,HttpStatus.CONFLICT);
    }

    @ExceptionHandler(value = { Exception.class})
    protected ResponseEntity<ErrorDescription> handleMyException(Exception ex, WebRequest request) {
        ErrorDescription bodyOfResponse = new ErrorDescription();
        bodyOfResponse.setMessage(ex.getMessage());
        bodyOfResponse.setCode(1000);
        return new ResponseEntity<ErrorDescription>(bodyOfResponse, HttpStatus.CONFLICT);
    }
}
