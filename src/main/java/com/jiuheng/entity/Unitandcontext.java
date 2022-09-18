package com.jiuheng.entity;

import com.baomidou.mybatisplus.annotation.TableName;
import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableField;
import java.io.Serializable;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.experimental.Accessors;

/**
 * <p>
 * 
 * </p>
 *
 * @author CMQ
 * @since 2022-09-18
 */
@Data
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
@TableName("co_unitandcontext")
@ApiModel(value="Unitandcontext对象", description="")
public class Unitandcontext implements Serializable {

    private static final long serialVersionUID = 1L;

    @TableId(value = "uid", type = IdType.AUTO)
    private Integer uid;

    private String unit;

    private String utype;

    @TableField("uContext")
    private String uContext;

    @TableField("uDuty")
    private String uDuty;

    @TableField("uLeader")
    private String uLeader;

    @TableField("uPhone")
    private String uPhone;

    private Integer pid;


}
