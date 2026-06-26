# 项目洞察助手PRO

把官网、手册、课程页、口述资料和内部笔记，拆成能给老板、运营、销售、写作流程继续使用的项目宣传输入包。

<p align="center">
  <img src="assets/hero-xiaoqin-project-map.png" alt="小秦整理项目地图" width="920">
</p>

<p align="center">
  <strong>本地 Skill · 项目拆解 · 宣传交接 · 小秦配图 2.0</strong>
</p>

## 它是干什么的

`项目洞察助手PRO` 是一个本地 skill，专门执行项目洞察第一阶段。它读取项目资料，输出一份可读、可判断、可交接的项目宣传写作输入包。

适合这些场景：

- 教育咨询、课程培训、服务产品、AI 工具和内容产品推广前的项目判断。
- 老板、运营、销售和写作团队需要先看清产品、人群、交付和推广打法。
- 项目资料很多，卖点很多，但团队缺少清晰的下游交接材料。

## 一眼看懂运行逻辑

<p align="center">
  <img src="assets/workflow-xiaoqin-pipeline.png" alt="小秦推动项目洞察流水线" width="920">
</p>

项目洞察助手PRO按五步运行：

| 步骤 | 做什么 | 产出 |
|---|---|---|
| 1 | 识别项目 | 主体、交付物、价格、目标结果、资料缺口 |
| 2 | 建立底稿 | 事实、来源、时效、风险、待核验点 |
| 3 | 拆交易交付 | 用户买到什么、怎么交付、谁负责、边界在哪里 |
| 4 | 判断人群 | 适合对象、付款者、使用者、影响者、反对者 |
| 5 | 输出交接 | 推广主线、内容资产、转化入口、下游写作指令 |

## BeeGer 真实产品样例

本仓库提供 BeeGer 公开资料样例，用来展示“输入资料 -> 项目洞察结果”的效果。

- BeeGer 官网：[https://beeger.cn/](https://beeger.cn/)
- 样例输入：[examples/beeger-input.md](examples/beeger-input.md)
- 样例输出：[examples/beeger-output.md](examples/beeger-output.md)

<p align="center">
  <img src="assets/beeger-case-xiaoqin-dashboard.png" alt="小秦拆解 BeeGer 案例看板" width="920">
</p>

BeeGer 样例中，项目洞察助手PRO会拆出：

- 产品定义：BeeGer 是面向内容运营场景的 AI 运营官。
- 用户买到什么：业务档案、内容生产、平台改写、审核发布和复盘链路。
- 优先人群：企业老板、专业顾问、矩阵操盘手、代运营、一人公司和课程团队。
- 推广边界：不承诺爆款、成交或增长，不替代真实专业判断和真实拍摄。

## 输出结果长什么样

<p align="center">
  <img src="assets/output-xiaoqin-handoff.png" alt="小秦交付项目洞察包" width="920">
</p>

默认输出包含：

- 一页结论：产品是什么、核心价值、是否值得推广、优先人群、关键红线。
- 产品拆解：主体、交付物、交易结构、交付方式、费用边界。
- 结果路径：项目能支持到哪一步，哪些结果依赖用户条件、第三方规则或当年政策。
- 目标人群：适合人群、不适合人群、购买者、使用者、影响者、反对者。
- 成交阻力：真实反对理由、回应方向、需要补充的证据。
- 推广打法：主打人群、主打痛点、卖点顺序、内容角度、转化入口、话术边界。
- 内容资产：日常可生产的内容方向、适合平台、承接方式、销售使用方式。
- 下游写作指令：给选题、素材、文章、短视频、咨询话术使用。

## 小秦配图 2.0

本仓库首页的图片全部按小秦配图 2.0 生成后复制到 `assets/`。

| 图片 | 用途 |
|---|---|
| `hero-xiaoqin-project-map.png` | 首页首屏，展示小秦整理项目地图 |
| `workflow-xiaoqin-pipeline.png` | 展示运行逻辑 |
| `beeger-case-xiaoqin-dashboard.png` | 展示 BeeGer 案例拆解 |
| `output-xiaoqin-handoff.png` | 展示输出交接 |

图片只用于仓库展示和说明，不放入 `skill/项目洞察助手PRO/` 运行目录。

## 安装使用

把 `skill/项目洞察助手PRO/` 整个目录复制到你的本地 skills 目录。

常见路径：

```text
C:\Users\秦岭\ZCodeProject\.Codex\skills\项目洞察助手PRO\
C:\Users\秦岭\.codex\skills\项目洞察助手PRO\
```

默认调用：

```text
启动项目洞察PRO，基于下面这份项目资料，输出项目洞察报告。
```

审计版调用：

```text
启动项目洞察PRO，输出审计版，包含编号、置信度和证据账本。
```

更多平台教程见：[docs/安装使用.md](docs/安装使用.md)

## 仓库文件

```text
.
├─ README.md
├─ assets/
├─ docs/
│  ├─ index.html
│  ├─ 介绍.md
│  ├─ 安装使用.md
│  └─ 本地预览验收.md
├─ examples/
│  ├─ 示例输入.md
│  ├─ 示例输出结构.md
│  ├─ beeger-input.md
│  └─ beeger-output.md
├─ scripts/
│  └─ validate.ps1
└─ skill/
   └─ 项目洞察助手PRO/
      ├─ SKILL.md
      ├─ learnings.md
      ├─ references/
      └─ templates/
```

## 发布前校验

在仓库根目录运行：

```powershell
powershell -ExecutionPolicy Bypass -File scripts/validate.ps1
```

校验内容包括：

- 必要文件是否齐全。
- skill 运行目录中是否误放 `README.md`。
- `SKILL.md` 中的内部名称是否为 `project-insight-pro`。
- skill 运行文件中是否包含个人本机路径。

## 本地网页预览

仓库还保留了一个更完整的 HTML 展示页：

```text
docs/index.html
```

如果启用 GitHub Pages，可将发布目录设置为 `/docs`。

## 版本

- 当前版本：`1.5.0`
- 作者：秦岭
- 许可证：MIT
