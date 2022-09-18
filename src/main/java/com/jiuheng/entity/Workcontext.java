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
@TableName("co_workcontext")
@ApiModel(value="Workcontext对象", description="")
public class Workcontext implements Serializable {

    private static final long serialVersionUID = 1L;

    @TableId(value = "cid", type = IdType.AUTO)
    private Integer cid;

    @TableField("workContext")
    private String workContext;

    @TableField("startTime")
    private String startTime;

    @TableField("endTime")
    private String endTime;

    @ApiModelProperty(value = "工作人数")
    @TableField("workNums")
    private Integer workNums;

    @ApiModelProperty(value = "工作天数")
    @TableField("workDays")
    private Double workDays;

    private Integer sid;


}
