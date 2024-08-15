const goods = [
    {
        classifyId:1,
        classifyName: "慈善捐赠",
        courseList: [
            {
                courseId:1,
                name: "爱心捐赠计划",
                total_price: "500万元",
                used_price: "250万元",
                start_time: "2023-05-10",
                end_time: "2025-05-10",
                company: "慈善机构",
                isObject: true,
                object_content: "衣服，食品，医疗用品",
                pic: $r("app.media.cishanjuanzhu1")
            },
            {
                courseId:2,
                name: "儿童教育基金",
                total_price: "300万元",
                used_price: "150万元",
                start_time: "2024-02-15",
                end_time: "2026-02-15",
                company: "教育基金会",
                isObject: true,
                object_content: "书本，文具，校服",
                pic: $r("app.media.cishanjuanzhu2")
            },
            {
                courseId:3,
                name: "农村基础建设",
                total_price: "200万元",
                used_price: "100万元",
                start_time: "2024-03-01",
                end_time: "2026-03-01",
                company: "乡村发展组织",
                isObject: true,
                object_content: "道路，饮水设施，电力供应",
                pic: $r("app.media.cishanjuanzhu3")
            },
            {
                courseId:4,
                name: "医疗救助基金",
                total_price: "250万元",
                used_price: "125万元",
                start_time: "2023-11-01",
                end_time: "2024-11-01",
                company: "慈善医疗基金会",
                isObject: true,
                object_content: "药品，医疗器械，手术资助",
                pic: $r("app.media.cishanjuanzhu4")
            },
            {
                courseId:5,
                name: "环保公益项目",
                total_price: "150万元",
                used_price: "75万元",
                start_time: "2024-04-01",
                end_time: "2025-04-01",
                company: "环保基金会",
                isObject: true,
                object_content: "环保设备，宣传材料，志愿者服务",
                pic: $r("app.media.cishanjuanzhu5")
            },
            {
                courseId:6,
                name: "社区发展基金",
                total_price: "180万元",
                used_price: "90万元",
                start_time: "2024-06-01",
                end_time: "2025-06-01",
                company: "社区发展协会",
                isObject: true,
                object_content: "社区设施，活动组织，志愿者培训",
                pic: $r("app.media.cishanjuanzhu6")
            }
        ]
    },
    {
        classifyId:2,
        classifyName: "爱佑新生",
        courseList: [
            {
                courseId:1,
                name: "新生儿关爱项目",
                total_price: "300万元",
                used_price: "150万元",
                start_time: "2024-01-01",
                end_time: "2024-12-31",
                company: "爱佑基金会",
                isObject: true,
                object_content: "奶粉，尿布，婴儿衣物",
                pic: $r("app.media.aiyouxinsheng1")
            },
            {
                courseId:2,
                name: "早产儿援助计划",
                total_price: "200万元",
                used_price: "100万元",
                start_time: "2024-03-01",
                end_time: "2025-03-01",
                company: "爱佑基金会",
                isObject: true,
                object_content: "早产儿奶粉，保温箱，医疗支持",
                pic: $r("app.media.aiyouxinsheng2")
            },
            {
                courseId:3,
                name: "母婴健康服务",
                total_price: "220万元",
                used_price: "110万元",
                start_time: "2024-05-01",
                end_time: "2025-05-01",
                company: "健康服务协会",
                isObject: true,
                object_content: "健康检查，营养指导，医疗服务",
                pic: $r("app.media.aiyouxinsheng3")
            },
            {
                courseId:4,
                name: "婴幼儿早期教育",
                total_price: "250万元",
                used_price: "125万元",
                start_time: "2024-02-01",
                end_time: "2025-02-01",
                company: "教育促进会",
                isObject: true,
                object_content: "早教课程，教育玩具，育儿指导",
                pic: $r("app.media.aiyouxinsheng4")
            },
            {
                courseId:5,
                name: "儿童营养改善",
                total_price: "180万元",
                used_price: "90万元",
                start_time: "2024-06-01",
                end_time: "2025-06-01",
                company: "营养改善基金",
                isObject: true,
                object_content: "营养食品，健康检查，营养宣传",
                pic: $r("app.media.aiyouxinsheng5")
            },
            {
                courseId:6,
                name: "孤儿救助项目",
                total_price: "240万元",
                used_price: "120万元",
                start_time: "2024-04-01",
                end_time: "2025-04-01",
                company: "孤儿救助中心",
                isObject: true,
                object_content: "生活用品，教育资助，心理辅导",
                pic: $r("app.media.aiyouxinsheng6")
            }
        ]
    },
    {
        classifyId:3,
        classifyName: "公益捐助",
        courseList: [
            {
                courseId:1,
                name: "山区支教活动",
                total_price: "150万元",
                used_price: "75万元",
                start_time: "2024-09-01",
                end_time: "2025-09-01",
                company: "公益组织安心公益",
                isObject: true,
                object_content: "教科书，教学设备，教师支援",
                pic: $r("app.media.gongyijuanzhu1")
            },
            {
                courseId:2,
                name: "社区卫生改善",
                total_price: "120万元",
                used_price: "60万元",
                start_time: "2024-05-01",
                end_time: "2025-05-01",
                company: "卫生改善基金",
                isObject: true,
                object_content: "医疗器材，卫生用品，健康宣传",
                pic: $r("app.media.gongyijuanzhu2")
            },
            {
                courseId:3,
                name: "乡村基础教育",
                total_price: "160万元",
                used_price: "80万元",
                start_time: "2024-07-01",
                end_time: "2025-07-01",
                company: "乡村教育基金会",
                isObject: true,
                object_content: "学校建设，教师培训，教学资源",
                pic: $r("app.media.gongyijuanzhu3")
            },
            {
                courseId:4,
                name: "城市贫民援助",
                total_price: "180万元",
                used_price: "90万元",
                start_time: "2024-08-01",
                end_time: "2025-08-01",
                company: "城市发展组织",
                isObject: true,
                object_content: "住房，医疗，教育",
                pic: $r("app.media.gongyijuanzhu4")
            },
            {
                courseId:5,
                name: "文化遗产保护",
                total_price: "130万元",
                used_price: "65万元",
                start_time: "2024-04-01",
                end_time: "2025-04-01",
                company: "文化保护基金会",
                isObject: true,
                object_content: "文物修复，文化推广，研究资助",
                pic: $r("app.media.gongyijuanzhu5")
            },
            {
                courseId:6,
                name: "社会融入项目",
                total_price: "140万元",
                used_price: "70万元",
                start_time: "2024-03-01",
                end_time: "2025-03-01",
                company: "社会服务协会",
                isObject: true,
                object_content: "技能培训，就业指导，心理辅导",
                pic: $r("app.media.gongyijuanzhu6")
            }
        ]
    },
    {
        classifyId:4,
        classifyName: "助学圆梦",
        courseList: [
            {
                courseId:1,
                name: "梦想助学计划",
                total_price: "200万元",
                used_price: "100万元",
                start_time: "2024-08-07",
                end_time: "2026-08-07",
                company: "中软国际股份有限公司",
                isObject: true,
                object_content: "衣服，笔，书本，生活用品",
                pic: $r("app.media.zhuxueyuanmeng1")
            },
            {
                courseId:2,
                name: "贫困生助学基金",
                total_price: "250万元",
                used_price: "125万元",
                start_time: "2024-07-01",
                end_time: "2025-07-01",
                company: "助学基金会",
                isObject: true,
                object_content: "学费，住宿费，学习用品",
                pic: $r("app.media.zhuxueyuanmeng2")
            },
            {
                courseId:3,
                name: "高等教育资助",
                total_price: "300万元",
                used_price: "150万元",
                start_time: "2024-09-01",
                end_time: "2026-09-01",
                company: "高等教育促进会",
                isObject: true,
                object_content: "学费资助，书籍购买，实验设备",
                pic: $r("app.media.zhuxueyuanmeng3")
            },
            {
                courseId:4,
                name: "留学助学计划",
                total_price: "350万元",
                used_price: "175万元",
                start_time: "2024-05-01",
                end_time: "2026-05-01",
                company: "国际教育基金",
                isObject: true,
                object_content: "签证费用，学费，生活费支持",
                pic: $r("app.media.zhuxueyuanmeng4")
            },
            {
                courseId:5,
                name: "职业技能培训",
                total_price: "180万元",
                used_price: "90万元",
                start_time: "2024-06-01",
                end_time: "2025-06-01",
                company: "职业培训协会",
                isObject: true,
                object_content: "技能培训，就业指导，实习机会",
                pic: $r("app.media.zhuxueyuanmeng5")
            },
            {
                courseId:6,
                name: "教育公平支持",
                total_price: "200万元",
                used_price: "100万元",
                start_time: "2024-03-01",
                end_time: "2025-03-01",
                company: "教育公益基金",
                isObject: true,
                object_content: "奖学金设立，教育资源分享，教师培训",
                pic: $r("app.media.zhuxueyuanmeng6")
            }
        ]
    },
    {
        classifyId:5,
        classifyName: "扶老助残",
        courseList: [
            {
                courseId:1,
                name: "敬老院改造项目",
                total_price: "100万元",
                used_price: "50万元",
                start_time: "2024-06-15",
                end_time: "2025-06-15",
                company: "助老基金会",
                isObject: true,
                object_content: "床铺，医疗设备，娱乐设施",
                pic: $r("app.media.fulaozhucan1")
            },
            {
                courseId:2,
                name: "残疾人就业培训",
                total_price: "80万元",
                used_price: "40万元",
                start_time: "2024-10-01",
                end_time: "2025-10-01",
                company: "残疾人就业支持中心",
                isObject: true,
                object_content: "培训教材，学习设备，技能培训",
                pic: $r("app.media.fulaozhucan2")
            },
            {
                courseId:3,
                name: "老年人健康关怀",
                total_price: "120万元",
                used_price: "60万元",
                start_time: "2024-09-01",
                end_time: "2025-09-01",
                company: "健康关怀基金",
                isObject: true,
                object_content: "健康检查，医疗咨询，心理支持",
                pic: $r("app.media.fulaozhucan3")
            },
            {
                courseId:4,
                name: "盲人服务支持",
                total_price: "90万元",
                used_price: "45万元",
                start_time: "2024-08-01",
                end_time: "2025-08-01",
                company: "盲人服务协会",
                isObject: true,
                object_content: "盲文学习，助听器，生活技能培训",
                pic: $r("app.media.fulaozhucan4")
            },
            {
                courseId:5,
                name: "义肢捐赠计划",
                total_price: "110万元",
                used_price: "55万元",
                start_time: "2024-07-01",
                end_time: "2025-07-01",
                company: "义肢捐赠中心",
                isObject: true,
                object_content: "义肢设备，康复服务，心理支持",
                pic: $r("app.media.fulaozhucan5")
            },
            {
                courseId:6,
                name: "残疾人文化交流",
                total_price: "100万元",
                used_price: "50万元",
                start_time: "2024-05-01",
                end_time: "2025-05-01",
                company: "残疾人文化交流中心",
                isObject: true,
                object_content: "文化活动，艺术培训，社交支持",
                pic: $r("app.media.fulaozhucan6")
            }
        ]
    },
    {
        classifyId:6,
        classifyName: "慈善军营",
        courseList: [
            {
                courseId:1,
                name: "军人家庭帮扶计划",
                total_price: "250万元",
                used_price: "125万元",
                start_time: "2023-12-01",
                end_time: "2024-12-01",
                company: "军人支持中心",
                isObject: true,
                object_content: "生活补助，子女教育，住房支持",
                pic: $r("app.media.cishanjunying1")
            },
            {
                courseId:2,
                name: "退役军人再就业",
                total_price: "150万元",
                used_price: "75万元",
                start_time: "2024-04-01",
                end_time: "2025-04-01",
                company: "退役军人服务机构",
                isObject: true,
                object_content: "就业培训，职业介绍，就业支持",
                pic: $r("app.media.cishanjunying2")
            },
            {
                courseId:3,
                name: "军队文化传承",
                total_price: "180万元",
                used_price: "90万元",
                start_time: "2024-06-01",
                end_time: "2025-06-01",
                company: "军事文化促进会",
                isObject: true,
                object_content: "文化活动，历史研究，教育推广",
                pic: $r("app.media.cishanjunying3")
            },
            {
                courseId:4,
                name: "战地医疗支援",
                total_price: "200万元",
                used_price: "100万元",
                start_time: "2024-02-01",
                end_time: "2025-02-01",
                company: "战地医疗救援队",
                isObject: true,
                object_content: "急救设备，医疗药品，志愿者培训",
                pic: $r("app.media.cishanjunying4")
            },
            {
                courseId:5,
                name: "军人退役安置",
                total_price: "220万元",
                used_price: "110万元",
                start_time: "2024-09-01",
                end_time: "2025-09-01",
                company: "退役安置基金",
                isObject: true,
                object_content: "住房安置，就业支持，心理咨询",
                pic: $r("app.media.cishanjunying5")
            },
            {
                courseId:6,
                name: "军事遗产保护",
                total_price: "170万元",
                used_price: "85万元",
                start_time: "2024-08-01",
                end_time: "2025-08-01",
                company: "军事遗产保护协会",
                isObject: true,
                object_content: "遗产修复，文物保护，历史研究",
                pic: $r("app.media.cishanjunying6")
            }
        ]
    },
    {
        classifyId:7,
        classifyName: "免费捐助",
        courseList: [
            {
                courseId:1,
                name: "社区免费午餐",
                total_price: "50万元",
                used_price: "25万元",
                start_time: "2024-07-01",
                end_time: "2024-12-31",
                company: "社区服务组织",
                isObject: true,
                object_content: "食品，餐具，志愿者服务",
                pic: $r("app.media.mianfeijuanzhu1")
            },
            {
                courseId:2,
                name: "贫困家庭冬衣捐赠",
                total_price: "60万元",
                used_price: "30万元",
                start_time: "2024-11-01",
                end_time: "2025-03-01",
                company: "社区慈善会",
                isObject: true,
                object_content: "冬衣，棉被，取暖设备",
                pic: $r("app.media.mianfeijuanzhu2")
            },
            {
                courseId:3,
                name: "义务教育资助",
                total_price: "70万元",
                used_price: "35万元",
                start_time: "2024-10-01",
                end_time: "2025-10-01",
                company: "义务教育支持中心",
                isObject: true,
                object_content: "学习用品，课外活动，教育资源",
                pic: $r("app.media.mianfeijuanzhu3")
            },
            {
                courseId:4,
                name: "社区安全服务",
                total_price: "80万元",
                used_price: "40万元",
                start_time: "2024-09-01",
                end_time: "2025-09-01",
                company: "社区安全组织",
                isObject: true,
                object_content: "安全设备，应急培训，安全宣传",
                pic: $r("app.media.mianfeijuanzhu4")
            },
            {
                courseId:5,
                name: "社区健康日活动",
                total_price: "90万元",
                used_price: "45万元",
                start_time: "2024-08-01",
                end_time: "2025-08-01",
                company: "社区健康促进会",
                isObject: true,
                object_content: "健康体检，健康讲座，健康服务",
                pic: $r("app.media.mianfeijuanzhu5")
            },
            {
                courseId:6,
                name: "环保意识培养",
                total_price: "100万元",
                used_price: "50万元",
                start_time: "2024-07-01",
                end_time: "2025-07-01",
                company: "环保教育协会",
                isObject: true,
                object_content: "环保宣传，生态教育，绿色行动",
                pic: $r("app.media.mianfeijuanzhu6")
            }
        ]
    },
    {
        classifyId:8,
        classifyName: "突发事件",
        courseList: [
            {
                courseId:1,
                name: "灾后重建援助",
                total_price: "400万元",
                used_price: "200万元",
                start_time: "2024-08-01",
                end_time: "2025-08-01",
                company: "灾害援助基金",
                isObject: true,
                object_content: "建筑材料，工程设备，志愿者服务",
                pic: $r("app.media.tufashijian1")
            },
            {
                courseId:2,
                name: "紧急救援物资",
                total_price: "350万元",
                used_price: "175万元",
                start_time: "2024-09-01",
                end_time: "2025-09-01",
                company: "紧急救援中心",
                isObject: true,
                object_content: "食品，水，医疗用品",
                pic: $r("app.media.tufashijian2")
            },
            {
                courseId:3,
                name: "自然灾害预警",
                total_price: "300万元",
                used_price: "150万元",
                start_time: "2024-10-01",
                end_time: "2025-10-01",
                company: "灾害预警中心",
                isObject: true,
                object_content: "监测设备，预警系统，应急计划",
                pic: $r("app.media.tufashijian3")
            },
            {
                courseId:4,
                name: "社区安全培训",
                total_price: "250万元",
                used_price: "125万元",
                start_time: "2024-11-01",
                end_time: "2025-11-01",
                company: "社区安全中心",
                isObject: true,
                object_content: "安全演练，紧急响应，安全知识普及",
                pic: $r("app.media.tufashijian4")
            },
            {
                courseId:5,
                name: "环境灾害防治",
                total_price: "280万元",
                used_price: "140万元",
                start_time: "2024-12-01",
                end_time: "2025-12-01",
                company: "环境保护协会",
                isObject: true,
                object_content: "环境监测，污染治理，生态恢复",
                pic: $r("app.media.tufashijian5")
            },
            {
                courseId:6,
                name: "人道主义援助",
                total_price: "320万元",
                used_price: "160万元",
                start_time: "2024-06-01",
                end_time: "2025-06-01",
                company: "国际人道救援组织",
                isObject: true,
                object_content: "救援物资，人道支援，难民帮助",
                pic: $r("app.media.tufashijian6")
            }
        ]
    }
];

export default goods