package com.eolinker.pojo;

import lombok.*;

import java.sql.Timestamp;

/**
 * 接口bean
 *
 * @author www.eolinker.com 广州银云信息科技有限公司 2015-2018
 * eoLinker是目前全球领先、国内最大的在线API接口管理平台，提供自动生成API文档、API自动化测试、Mock测试、团队协作等功能，旨在解决由于前后端分离导致的开发效率低下问题。
 * 如在使用的过程中有任何问题，欢迎加入用户讨论群进行反馈，我们将会以最快的速度，最好的服务态度为您解决问题。
 * <p>
 * eoLinker AMS开源版的开源协议遵循GPL V3，如需获取最新的eolinker开源版以及相关资讯，请访问:https://www.eolinker.com/#/os/download
 * <p>
 * 官方网站：https://www.eolinker.com/ 官方博客以及社区：http://blog.eolinker.com/
 * 使用教程以及帮助：http://help.eolinker.com/ 商务合作邮箱：market@eolinker.com
 * 用户讨论QQ群：707530721
 * @name eolinker ams open source，eolinker开源版本
 * @link https://www.eolinker.com/
 * @package eolinker
 */
@Data
public class Api {
    private Integer apiID;//接口ID
    private String apiName;//接口名称
    private String apiURI;//接口URI
    private Integer apiProtocol;//请求协议
    private String apiFailureMock;//失败示例
    private String apiSuccessMock;//成功示例
    private Integer apiRequestType;//请求类型
    private Integer apiSuccessMockType;//mock成功类型
    private Integer apiFailureMockType;//mock失败类型
    private Integer apiStatus;//接口状态
    private Timestamp apiUpdateTime;//接口更新时间
    private Integer groupID;//分组ID
    private Integer projectID;//项目ID
    private Integer starred;//星标状态
    private Integer removed;//是否被移到回收站
    private Timestamp removeTime;//移到回收站的时间
    private Integer apiNoteType;//接口详细说明文本类型
    private String apiNoteRaw;//详细说明富文本
    private String apiNote;//详细说明Markdown
    private Integer apiRequestParamType;//接口请求类型
    private String apiRequestRaw;//接口源数据
    private Integer updateUserID;//更新人员ID
    private String mockRule;//mock规则
    private String mockResult;//mock数据
    private String mockConfig;//mock配置
    private String apiSuccessStatusCode;//成功状态码
    private String apiFailureStatusCode;//失败状态码
    private String beforeInject;//前置注入
    private String afterInject;//后置注入
    private String apiMethodType;//请求类型
    private String apiMethod;//请求方法

}
