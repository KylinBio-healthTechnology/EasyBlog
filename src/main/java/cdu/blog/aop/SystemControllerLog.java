package cdu.blog.aop;

import java.lang.annotation.*;

@Retention(RetentionPolicy.RUNTIME)
@Target({ElementType.PARAMETER,ElementType.METHOD})
@Documented
public @interface SystemControllerLog
{
   /*描述操作*/
    String description() default "";
   /*操作类型*/
    String actionType() default "";
}
