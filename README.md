# LLM-Resume-Template

# 大模型算法工程师简历模板 | LLM Algorithm Engineer Resume Template

[![License: CC BY 4.0](https://img.shields.io/badge/License-CC%20BY%204.0-lightgrey.svg)](https://creativecommons.org/licenses/by/4.0/)
[![LaTeX](https://img.shields.io/badge/LaTeX-Template-green.svg)](https://www.latex-project.org/)
[![GitHub stars](https://img.shields.io/github/stars/adonogwanai/LLM-Resume-Template?style=social)](https://github.com/adonogwanai/LLM-Resume-Template)

一个专为**大模型算法工程师**打造的 LaTeX 简历模板，适合求职大模型、Agent、RAG、NLP 等 AI 相关岗位。

## ✨ 特性

- 📝 **专业内容结构**：涵盖科研经历、实习经历、项目经历等完整板块
- 🎯 **大模型方向优化**：针对 LLM、Agent、RAG、模型压缩等热门方向设计
- 🔧 **易于修改**：提供完整的占位符模板，方便快速替换个人信息
- 🎨 **排版精美**：基于优秀的 LaTeX 简历模板，支持中英文
- 🚀 **一键编译**：支持 Overleaf 在线编辑，无需本地配置环境

## 📁 文件说明

```
resume-master/
├── resume-zh.tex          # 中文简历（完整示例）
├── resume-model.tex       # 简历模板（含占位符，推荐使用）
├── resume-en.tex          # 英文简历模板
├── resume.cls             # 简历样式文件
├── Makefile               # 编译脚本
├── fontawesome5/          # 图标字体文件
└── README.md              # 本文件
```

**推荐使用 `resume-model.tex`**：这是一个带有详细占位符和示例的模板文件，方便你快速替换成自己的信息。

## 🚀 快速开始

### 方法一：使用 Overleaf（推荐，无需配置环境）

#### 步骤 1: 下载项目

点击 GitHub 页面右上角的 **Code** → **Download ZIP**，下载整个项目压缩包。

#### 步骤 2: 导入 Overleaf

1. 访问 [Overleaf](https://www.overleaf.com/) 并登录/注册
2. 点击左上角 **New Project** → **Upload Project**
3. 上传刚才下载的 ZIP 文件
4. 等待项目导入完成

#### 步骤 3: 设置主文件

1. 在 Overleaf 项目中，点击左上角的 **Menu** 按钮
2. 在 **Main document** 下拉菜单中选择 `resume-model.tex`（或 `resume-zh.tex`）
3. 点击 **Recompile** 即可预览 PDF

#### 步骤 4: 开始编辑

直接在 Overleaf 编辑器中修改 `resume-model.tex` 文件，保存后会自动重新编译并更新 PDF 预览。

---

### 方法二：使用 Cursor/VSCode + AI 辅助修改（效率更高）

如果你想用 AI 快速批量修改简历内容，推荐使用 Cursor 编辑器。

#### 步骤 1: 克隆项目

```bash
git clone https://github.com/adonogwanai/LLM-Resume-Template.git
cd LLM-Resume-Template
```

或者直接下载 ZIP 并解压。

#### 步骤 2: 用 Cursor 打开项目

1. 下载并安装 [Cursor](https://cursor.sh/)
2. 用 Cursor 打开项目文件夹
3. 打开 `resume-model.tex` 文件

#### 步骤 3: 使用 AI 提示词快速修改

选中需要修改的部分，按 `Cmd+K`（Mac）或 `Ctrl+K`（Windows）唤起 Cursor AI，输入提示词进行修改。

**提示词示例见下方 [AI 提示词参考](#-ai-提示词参考) 部分。**

#### 步骤 4: 同步到 Overleaf

修改完成后，将项目文件夹打包成 ZIP，重新上传到 Overleaf 进行编译和预览。

---

### 方法三：本地编译（需要 LaTeX 环境）

如果你已安装 TeX Live 或 MacTeX，可以在本地编译：

```bash
# 编译中文简历
make zh

# 或直接使用 xelatex
xelatex resume-zh.tex
xelatex resume-zh.tex  # 编译两次以生成正确的目录和引用
```

## 📝 使用指南

### 1. 修改个人信息

在 `resume-model.tex` 中找到以下部分并修改：

```latex
\name{玩AI}{阿东}  % 修改为你的姓名（姓 名）

\keywords{大模型, 算法工程师, 模型压缩, 模型微调, PyTorch, DeepSpeed}

\profile{
  \mobile{138-0000-0000}              % 手机号
  \email{adong@tsinghua.edu.cn}       % 邮箱
  \university{清华大学}                % 学校
  \degree{计算机科学与技术 \textbullet 硕士}  % 专业和学位
  \birthday{1998-06}                  % 生日
}
```

### 2. 替换经历内容

模板中使用 `XXXX` 和 `XX` 作为占位符，你可以：

- **手动替换**：直接搜索 `XXXX` 并替换为你的实际内容
- **使用 AI 辅助**：参考下方的提示词示例，让 AI 帮你快速填充

### 3. 调整板块顺序

根据你的求职重点，可以调整各个板块的顺序。例如，如果你的项目经历更出色，可以把项目经历放在实习经历之前。

### 4. 添加/删除板块

如果某个板块不需要，直接删除对应的 `\sectionTitle` 和 `\begin{...} \end{...}` 部分即可。

## 🤖 AI 提示词参考

使用 Cursor、ChatGPT 或 Claude 时，可以参考以下提示词快速修改简历：

### 提示词 1: 修改个人基本信息

```
请帮我修改简历的个人信息部分：
- 姓名：张三
- 手机：138-1234-5678
- 邮箱：zhangsan@pku.edu.cn
- 学校：北京大学
- 专业：计算机科学与技术
- 学位：硕士
- 生日：1999-03
```

### 提示词 2: 填充科研经历

```
请帮我填充科研经历部分，我的研究方向是：
- 方向：多模态大模型的指令微调
- 时间：2024.03 - 至今
- 问题：现有多模态模型在细粒度视觉理解任务上表现不佳
- 方法：设计了区域级别的对齐策略，在 RefCOCO 数据集上训练
- 效果：相比 LLaVA baseline，准确率提升了 8.5%
- 成果：论文已投稿 CVPR 2025

请保持专业的学术写作风格，突出技术细节和量化指标。
```

### 提示词 3: 填充实习经历

```
请帮我填充实习经历，信息如下：
- 公司：字节跳动
- 部门：AI Lab - 大模型团队
- 时间：2024.06 - 2024.12
- 工作内容：
  1. 参与豆包大模型的数据构造，构造了 3B tokens 的代码数据，HumanEval 得分提升 6pp
  2. 负责模型的 SFT 训练，使用 LoRA 微调，训练了 5 个版本
  3. 优化推理性能，使用 vLLM，推理速度提升 50%

请用专业的方式描述，突出数据规模、技术方案和量化效果。
```

### 提示词 4: 填充项目经历

```
请帮我填充项目经历，我做了一个 RAG 项目：
- 项目名称：企业知识库智能问答系统
- 时间：2023.09 - 2024.01
- 背景：公司内部文档分散，员工查找信息效率低
- 方案：搭建了基于 RAG 的问答系统，使用 BGE-large 做向量化，FAISS 做检索，GPT-4 做生成
- 优化：加入了 HyDE 和重排序，召回率从 72% 提升到 88%
- 效果：系统上线后，员工查询效率提升 60%，好评率 91%

请用项目报告的风格描述，突出问题、方案、优化和效果。
```

### 提示词 5: 批量替换占位符

```
请帮我把简历中的所有占位符 XXXX 和 XX 替换为合理的示例内容，要求：
1. 内容贴合大模型算法工程师的工作场景
2. 使用真实存在的模型名称（如 LLaMA、Qwen、GPT-4）
3. 使用真实的 benchmark（如 MMLU、HumanEval、GSM8K）
4. 数字要合理（如提升幅度通常在 5%-20% 之间）
5. 保持专业性和可信度
```

### 提示词 6: 优化语言表达

```
请帮我优化简历中的"实习经历"部分，要求：
1. 使用更专业的技术术语
2. 突出量化指标和业务影响
3. 使用动词开头，增强行动力
4. 控制每条不超过 2 行
5. 遵循 STAR 法则（情境-任务-行动-结果）
```

## 📄 模板预览

### 科研经历示例

```latex
\item \textbf{基于强化学习的自主决策 Agent 系统研究} \hfill 2024.03 --- 至今
\begin{itemize}
    \item \textbf{问题背景}: 现有 LLM-based Agent 在复杂任务中存在决策路径冗余...
    \item \textbf{研究内容}: 1) 提出基于 PPO 的 Agent 决策优化框架...
    \item \textbf{相关成果}: 第一作者论文已投稿 NeurIPS 2025...
\end{itemize}
```

### 项目经历示例

```latex
\item \textbf{基于自我纠错机制的智能 RAG 检索系统} \hfill 2024.01 --- 2024.05
\begin{itemize}
    \item \textbf{项目背景}: 为解决企业内部知识库检索效率低下问题...
    \item \textbf{核心痛点}: 最初版本召回率仅 65%...
    \item \textbf{技术方案}: 1) 借鉴 ReAct 思想, 设计迭代式检索策略...
    \item \textbf{最终效果}: 召回率从 65% 提升至 85%...
\end{itemize}
```

## 💡 内容建议

### 科研经历

- 突出**问题背景**、**技术方案**和**量化效果**
- 提及具体的模型（LLaMA、GPT-4）、方法（LoRA、DPO）和 benchmark（MMLU、HumanEval）
- 强调论文发表、开源项目等学术成果

### 实习经历

- 使用 **STAR 法则**：情境（Situation）→ 任务（Task）→ 行动（Action）→ 结果（Result）
- 量化你的贡献：数据规模（XB tokens）、性能提升（X pp）、业务影响（XX% 提升）
- 突出你在团队中的角色和独立负责的模块

### 项目经历

- 描述**项目背景**和**痛点**，体现问题意识
- 详细说明**技术方案**，展示技术深度
- 强调**创新点**和**最终效果**，最好有对比数据

### 个人荣誉

- 优先列出与 AI/算法相关的荣誉
- 顶会论文 > 竞赛奖项 > 奖学金
- 注明具体排名（如 Top 1%、金牌）和参与人数

## 🎯 求职方向适配

本模板适合以下求职方向：

- 🤖 **大模型算法工程师**：LLM 训练、微调、对齐
- 🧠 **Agent 算法研究员**：强化学习、多智能体系统
- 📚 **RAG 算法工程师**：检索增强、知识库构建
- ⚡ **模型推理优化工程师**：量化、蒸馏、部署加速
- 🔬 **NLP 算法研究员**：文本生成、信息抽取、对话系统
- 🎨 **多模态算法工程师**：视觉-语言模型、VLM

## 🤝 贡献

欢迎提交 Issue 和 Pull Request 来改进这个模板！

如果这个模板对你有帮助，欢迎给个 ⭐️ Star！

## 📮 联系方式

- GitHub: [@adonogwanai](https://github.com/adonogwanai)
- 项目地址: [LLM-Resume-Template](https://github.com/adonogwanai/LLM-Resume-Template)

## 📜 许可证

本项目采用 [CC BY 4.0](https://creativecommons.org/licenses/by/4.0/) 许可证。

你可以自由地：
- ✅ **分享** — 复制和再分发本模板
- ✅ **修改** — 重新组合、转换和构建本模板
- ✅ **商用** — 将本模板用于商业目的

唯一要求：**署名** — 你必须给出适当的署名，提供指向本许可的链接，同时说明是否有做修改。

## 🙏 致谢

本模板基于 [resume](https://github.com/liweitianux/resume) 项目修改，感谢原作者的优秀工作！

针对大模型算法工程师求职场景进行了深度优化和内容重构。

---

**祝你求职顺利，拿到心仪的 Offer！🎉**

如有问题，欢迎提 Issue 或加入讨论！

