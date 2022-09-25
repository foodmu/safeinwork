package com.jiuheng.util;

import com.baomidou.mybatisplus.extension.api.R;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.stereotype.Component;

/**
 * @ClassName Result
 * @Description 公共返回类
 * @Author 程茂强
 * @Data 2022/9/21 19:16
 * @Version 1.0
 */
@Component
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Result {

    private Integer code;
    private String message;
    private Object data;

    public static Result success(Integer code,String message,Object data){
        return new Result(code,message,data);
    }
    public static Result success(Integer code,String message){
        return new Result(code,message,null);
    }
    public static Result failure(Integer code,String message,Object data){
        return new Result(code,message,data);
    }
    public static Result failure(Integer code,String message){
        return new Result(code,message,null);
    }
}
