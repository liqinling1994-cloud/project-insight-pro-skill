# 项目洞察助手PRO

把官网、手册、课程页、口述资料和内部笔记，拆成能给老板、运营、销售、写作流程继续使用的项目宣传输入包。

<p align="center">
  <img src="assets/hero-project-map.png" alt="项目顾问整理项目地图" width="920">
</p>

<p align="center">
  <strong>项目拆解 · 宣传交接 · 多工具 Skill 安装 · 案例演示</strong>
</p>

## 它是干什么的

`项目洞察助手PRO` 是一个可安装的 skill，专门执行项目洞察第一阶段。它读取项目资料，输出一份可读、可判断、可交接的项目宣传写作输入包。

适合这些场景：

- 教育咨询、课程培训、服务产品、AI 工具和内容产品推广前的项目判断。
- 老板、运营、销售和写作团队需要先看清产品、人群、交付和推广打法。
- 项目资料很多，卖点很多，但团队缺少清晰的下游交接材料。

## 一眼看懂运行逻辑

<p align="center">
  <img src="assets/workflow-pipeline.png" alt="项目洞察运行流水线" width="920">
</p>

项目洞察助手PRO按五步运行：

| 步骤 | 做什么 | 产出 |
|---|---|---|
| 1 | 识别项目 | 主体、交付物、价格、目标结果、资料缺口 |
| 2 | 建立底稿 | 事实、来源、时效、风险、待核验点 |
| 3 | 拆交易交付 | 用户买到什么、怎么交付、谁负责、边界在哪里 |
| 4 | 判断人群 | 适合对象、付款者、使用者、影响者、反对者 |
| 5 | 输出交接 | 推广主线、内容资产、转化入口、后续流程输入 |

## BeeGer 真实产品样例

本仓库提供 BeeGer 公开资料样例，用来展示“输入资料 -> 项目洞察结果”的效果。

- BeeGer 官网：[https://beeger.cn/](https://beeger.cn/)
- 样例输入：[examples/beeger-input.md](examples/beeger-input.md)
- 样例输出：[examples/beeger-output.md](examples/beeger-output.md)

<p align="center">
  <img src="assets/beeger-case-dashboard.png" alt="BeeGer 案例拆解看板" width="920">
</p>

BeeGer 样例中，项目洞察助手PRO会拆出：

- 产品定义：BeeGer 是面向内容运营场景的 AI 运营官。
- 用户买到什么：业务档案、内容生产、平台改写、审核发布和复盘链路。
- 优先人群：企业老板、专业顾问、矩阵操盘手、代运营、一人公司和课程团队。
- 案例用途：展示原始资料如何被拆成项目定义、人群判断和运营链路。

## 输出结果长什么样

<p align="center">
  <img src="assets/output-handoff.png" alt="项目洞察包交付给下游流程" width="920">
</p>

默认输出包含：

- 一页结论：产品是什么、核心价值、是否值得推广、优先人群、关键红线。
- 产品拆解：主体、交付物、交易结构、交付方式、费用边界。
- 结果路径：项目能支持到哪一步，哪些结果依赖用户条件、第三方规则或当年政策。
- 目标人群：适合人群、不适合人群、购买者、使用者、影响者、反对者。
- 成交阻力：真实反对理由、回应方向、需要补充的证据。
- 推广打法：主打人群、主打痛点、卖点顺序、内容角度、转化入口、话术边界。
- 内容资产：日常可生产的内容方向、适合平台、承接方式、销售使用方式。
- 后续流程输入：给选题、素材、文章、短视频、咨询话术使用。

## 视觉展示资产

本仓库首页的图片用于解释 skill 的工作方式：从资料进入、结构化拆解、案例呈现到下游交接。图片保存在 `assets/`，只服务 GitHub 首页和展示文档，不放入 skill 运行目录。

| 图片 | 用途 |
|---|---|
| `hero-project-map.png` | 首页首屏，展示项目资料如何被整理成地图 |
| `workflow-pipeline.png` | 展示运行逻辑 |
| `beeger-case-dashboard.png` | 展示 BeeGer 案例拆解 |
| `output-handoff.png` | 展示输出交接 |

## 安装使用

推荐安装方式：先获取这个 GitHub 仓库，再把 `skill/项目洞察助手PRO/` 整个目录放入目标工具的 skills 目录。

项目地址：

```text
https://github.com/liqinling1994-cloud/project-insight-pro-skill
```

获取仓库：

```powershell
git clone https://github.com/liqinling1994-cloud/project-insight-pro-skill.git
```

如果不使用 Git，也可以在 GitHub 页面点击 `Code` -> `Download ZIP`，解压后找到：

```text
skill/项目洞察助手PRO/
```

### Codex

把目录复制到 Codex 的 skills 目录，Windows 常见位置：

```text
%USERPROFILE%\.codex\skills\项目洞察助手PRO\
```

然后新开 Codex 会话，输入：

```text
启动项目洞察PRO，基于下面这份项目资料，输出项目洞察报告。
```

### Claude Code / CC

把目录复制到 Claude Code 可读取的 skills 目录，保持结构：

```text
skills/项目洞察助手PRO/
├─ SKILL.md
├─ references/
└─ templates/
```

测试指令：

```text
项目洞察助手PRO，分析下面这份项目资料。先输出干净阅读版。
```

### ZCode

把目录复制到 ZCode 项目或用户级 skills 目录，常见结构：

```text
ZCodeProject/.Codex/skills/项目洞察助手PRO/
```

刷新工具的 skill 列表后，输入：

```text
启动项目洞察PRO，基于下面这段项目资料，输出一份干净阅读版项目洞察报告。
```

### WorkBuddy / Work Body / 通用 SKILL.md 工具

如果工具支持读取 `SKILL.md`，按这个结构放置：

```text
skills/
└─ 项目洞察助手PRO/
   ├─ SKILL.md
   ├─ references/
   └─ templates/
```

触发指令：

```text
使用项目洞察助手PRO，基于下面资料输出项目宣传写作输入包。
```

审计版调用方式：

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
│  └─ 发布前校验.md
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

## 展示页

```text
docs/index.html
```

如果启用 GitHub Pages，可将发布目录设置为 `/docs`，展示页会作为项目介绍页面使用。

## 版本

- 当前版本：`1.5.1`
- 作者：秦岭
- 许可证：MIT
