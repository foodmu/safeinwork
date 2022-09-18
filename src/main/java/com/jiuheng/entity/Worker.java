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
@TableName("co_worker")
@ApiModel(value="Worker对象", description="")
public class Worker implements Serializable {

    private static final long serialVersionUID = 1L;

    @TableId(value = "wid", type = IdType.AUTO)
    private Integer wid;

    @TableField("wName")
    private String wName;

    @TableField("wSex")
    private Integer wSex;

    @TableField("wAge")
    private Integer wAge;

    @TableField("wPhone")
    private String wPhone;

    @TableField("wMajor")
    private String wMajor;

    @TableField("wUnit")
    private String wUnit;

    private Integer type;

    @TableField("workGroupId")
    private Integer workGroupId;


}
