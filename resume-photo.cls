\RequirePackage{expl3,l3keys2e}
\ProvidesExplClass{resume-photo}
{2022-12-26}{0.1.0}{Another Resume Class by Feng Kaiyu}

% Keep Quiet
\PassOptionsToPackage{quiet}{xeCJK}
\ProcessOptions\relax
\LoadClass[zihao=5,autoindent=0.5em]{ctexart}

% Define paper size.
\RequirePackage{geometry}
% Remove the default header and footer.
\RequirePackage{fancyhdr}
% Redefine list style.
\RequirePackage{enumitem}
% Align all footnotes in a row.
\RequirePackage[para]{footmisc}
\RequirePackage[colorlinks=false,hidelinks,]{hyperref}
% For the usage of `\CJKunderline`.
\RequirePackage{xeCJKfntef}
% Provide colors.
\RequirePackage{xcolor}
% For including images (photo).
\RequirePackage{graphicx}

\ExplSyntaxOn

% Clean pagestyle.
\pagestyle{empty}

% Adopt A4 style but with smaller margins.
\geometry{a4paper,margin=1cm, bottom=0.5cm}

%%% Global Variables %%%

% Store all contacts info.
\seq_new:N \g__resume_contacts_seq
% Store title name.
\tl_new:N \g__resume_title_name_tl
% Temp seq for parsing input clist in \ResumeContacts
\seq_new:N \l__resume_input_seq
% Store photo filename
\tl_new:N \g__resume_photo_tl

%%% Global Settings %%%

% No page number.
\pagenumbering{gobble}

% Set the style of section title.
\ctexset{
  section = {
    nameformat = {},
    number = {},
    format = \noindent \zihao{4} \heiti \__resume_section_title_format:n,
    indent = -1em,
    afterskip = 0.5em,
    beforeskip = 0.2em,
  },
}

% Set the style of list.
\setlist{
  labelsep=2pt,
  labelwidth=5pt,
  leftmargin=1.3em,
  itemsep=0em,
  parsep=0.20em,
  topsep=0em,
}

% Set the line spacing.
\linespread{1.15}

% New counter for bookmarks.
\newcounter{resumebookmark}

%%% User Commands %%%

% Predefined commands.
\cs_new:Npn \__resume_append_concat:n #1
{
  \seq_put_right:Nn \g__resume_contacts_seq {#1}
}

% Predefined commands.
\cs_new:Npn \__resume_section_title_format:n #1
{#1 \vspace{3pt} \hrule}


% Add a contant info.
\NewDocumentCommand{\ResumeContact}{m}
{
  \__resume_append_concat:n {#1}
}

% Add multiple contant info.
% ```
% \ResumeContacts{ itemA, itemB, itemC }
% ```
\NewDocumentCommand{\ResumeContacts}{m}
{
  \seq_set_from_clist:Nn \l__resume_input_seq {#1}
  \seq_map_inline:Nn \l__resume_input_seq
  {
    \__resume_append_concat:n {##1}
  }
}

% Add your resume title, which generally is your name.
\NewDocumentCommand{\ResumeName}{m}
{
  \tl_set:Nn \g__resume_title_name_tl {#1}
}

% Set photo filename
\NewDocumentCommand{\ResumePhoto}{m}
{
  \tl_set:Nn \g__resume_photo_tl {#1}
}

% Render the title.
\NewDocumentCommand{\ResumeTitle}{}
{
  \tl_if_empty:NTF \g__resume_photo_tl
  {
    % No photo version
    \begin{center}
      \zihao{-2} \heiti \g__resume_title_name_tl
    \end{center}
    \vspace{-1.4em}
    \begin{center}
      \seq_use:Nnnn \g__resume_contacts_seq {~|~} {~|~} {~|~}
    \end{center}
  }
  {
    % With photo version
    \noindent
    \begin{minipage}[c]{0.73\textwidth}
      {\zihao{-2} \heiti \g__resume_title_name_tl}
      \vspace{0.3em}
      \par
      \seq_use:Nnnn \g__resume_contacts_seq {~|~} {~|~} {~|~}
    \end{minipage}
    \hfill
    \raisebox{-0.5\height}{%
      \includegraphics[width=2.5cm]{\g__resume_photo_tl}%
    }
    \par
    \vspace{0.5em}
  }
}

% Render the section title.
% #1(optional): This content will be used as the bookmark in PDF.
% #2: The title of the section.
% #3(optional): The additional information of the section.
% #4(optional): The right-aligned content, which normally will be the date range.
\NewDocumentCommand{\ResumeItem}{omoo}
{
  {
    \zihao{-4}
    \par 
    \noindent
    {
      \heiti
      #2
      
      \IfValueTF{#1}
      {
        \pdfbookmark[2]{#1}{subsec:\arabic{resumebookmark}}
      }
      {
        \pdfbookmark[2]{#2}{subsec:\arabic{resumebookmark}}
      }
      \stepcounter{resumebookmark}
    }
    \IfValueT{#3}{
      \tl_if_empty:nF {#3} {
        \ | 
        \textit{
          #3
        }
      }
    }
    \hfill
    \IfValueT{#4}{
      #4
    }
    \par
  }
}

% Gray out the content.
\NewDocumentCommand{\GrayText}{m}
{
  \textcolor{gray}{#1}
}

% Render content with a hyperlink, marked with underline.
\NewDocumentCommand{\ResumeUrl}{mm}
{
  \href{#1}{\CJKunderline{#2}}
}

\ExplSyntaxOff

\endinput
