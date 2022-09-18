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
@TableName("co_workgroup")
@ApiModel(value="Workgroup对象", description="")
public class Workgroup implements Serializable {

    private static final long serialVersionUID = 1L;

    @TableId(value = "workgroupId", type = IdType.AUTO)
    private Integer workgroupId;

    @TableField("workgroupName")
    private String workgroupName;

    @TableField("parentId")
    private Integer parentId;

    @TableField("leaderId")
    private String leaderId;

    private String member;

    @TableField("pId")
    private Integer pId;


}
