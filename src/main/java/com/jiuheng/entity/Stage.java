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
@TableName("co_stage")
@ApiModel(value="Stage对象", description="")
public class Stage implements Serializable {

    private static final long serialVersionUID = 1L;

    @TableId(value = "sid", type = IdType.AUTO)
    private Integer sid;

    @TableField("sName")
    private String sName;

    @TableField("sGuardian")
    private String sGuardian;

    @TableField("sAcceptor")
    private String sAcceptor;

    private Integer fid;

    private String unitandleader;

    private String remark;

    @TableField("rId")
    private String rId;

    private Integer pid;

    @TableField("startTime")
    private String startTime;

    @TableField("endTime")
    private String endTime;


}
