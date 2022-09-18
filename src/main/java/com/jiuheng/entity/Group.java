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
@TableName("co_group")
@ApiModel(value="Group对象", description="")
public class Group implements Serializable {

    private static final long serialVersionUID = 1L;

    @TableId(value = "gid", type = IdType.AUTO)
    private Integer gid;

    @TableField("gName")
    private String gName;

    private String gleader;

    @ApiModelProperty(value = "检修公司一次")
    private Integer maintenanceOnce;

    @ApiModelProperty(value = "检修公司保护")
    private Integer maintenanceProtect;

    @ApiModelProperty(value = "检修公司实验")
    private Integer maintenanceTest;

    @ApiModelProperty(value = "检修公司输电")
    private Integer maintenanceTransmission;

    @ApiModelProperty(value = "外委一次")
    private Integer commissionOnce;

    @ApiModelProperty(value = "外委保护")
    private Integer commissionProtect;

    @ApiModelProperty(value = "外委实验")
    private Integer commissionTest;

    @ApiModelProperty(value = "技改辅修人数")
    private Integer assistNumber;

    private Integer sid;


}
