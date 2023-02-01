%%
%% Bu dosya 'ktutez.cls',
%%
%% Karadeniz Teknik Üniversitesi
%% Yüksek Lisans ve Doktora .cls dosyasıdır.
%%
%% Eğer bu dosya hakkında bir bilginiz yoksa 
%% üzerinde oynama yapmayınız. 
%%
%%
\NeedsTeXFormat{LaTeX2e} \ProvidesClass{ktutez}
%************************************************************* 

%************************************************************* 
% --- temel cls dosyasi ve digerleri..
\LoadClass[12pt,a4paper]{report} \RequirePackage{graphicx}
%************************************************************* 

\RequirePackage{enumitem}

%************************************************************* 
\makeatletter
%************************************************************* 

%************************************************************* 
%% -------- asagidaki degiskenler baslangic.tex dosyasinda girilmeli
\def\enstitumuduru#1{\gdef\@enstitumuduru{#1}}
\def\anablmdalibsk#1{\gdef\@anablmdalibsk{#1}}
%************************************************************* 

%************************************************************* 
\def\thesistype#1{\gdef\@thesistype{#1}}
\def\teztipibool{0}
\def\teztipi#1{\gdef\@teztipi{#1}}
\def\teztipikucuk#1{\gdef\@teztipikucuk{#1}}
%************************************************************* 

%************************************************************* 
\def\keywords#1{\gdef\@keywords{#1}}
\def\anahtarsoz#1{\gdef\@anahtarsoz{#1}}
%************************************************************* 

%************************************************************* 
\def\dept#1{\gdef\@dept{#1}}
\def\deptsmall#1{\gdef\@deptsmall{#1}}
\def\bolum#1{\gdef\@bolum{#1}}
\def\bolumkucuk#1{\gdef\@bolumkucuk{#1}}
\def\misafirbolum#1{\gdef\@misafirbolum{#1}}
%************************************************************* 

%************************************************************* 
\def\universite#1{\gdef\@universite{#1}}
\def\universitekucuk#1{\gdef\@universitekucuk{#1}}
\def\university#1{\gdef\@university{#1}}
\def\universitysmall#1{\gdef\@universitysmall{#1}}
\def\misafiruniversite#1{\gdef\@misafiruniversite{#1}}
%************************************************************* 

%************************************************************* 
\def\enstitu#1{\gdef\@enstitu{#1}}
\def\enstitukucuk#1{\gdef\@enstitukucuk{#1}}
\def\institute#1{\gdef\@institute{#1}}
\def\institutesmall#1{\gdef\@institutesmall{#1}}
\def\ounvan#1{\gdef\@ounvan{#1}}
%************************************************************* 

%************************************************************* 
\def\yazar#1{\gdef\@yazar{#1}}
\def\yazarkucuk#1{\gdef\@yazarkucuk{#1}}
\def\yunvan#1{\gdef\@yunvan{#1}}
\def\yorcid#1{\gdef\@yorcid{#1}}
%************************************************************* 

%************************************************************* 
\def\supervisor#1{\gdef\@supervisor{#1}}
\def\danisman#1{\gdef\@danisman{#1}}
\def\dorcid#1{\gdef\@dorcid{#1}}
\def\juriuyesi#1{\gdef\@juriuyesi{#1}}
\def\secondreader#1{\gdef\@secondreader{#1}}
\def\thirdreader#1{\gdef\@thirdreader{#1}}
\def\forthreader#1{\gdef\@forthreader{#1}}
\def\fifthreader#1{\gdef\@fifthreader{#1}}
%************************************************************* 

%************************************************************* 
\def\submitdate#1{\gdef\@submitdate{#1}}
\def\submitdatesmall#1{\gdef\@submitdatesmall{#1}}
\def\tarih#1{\gdef\@tarih{#1}}
\def\tarihkucuk#1{\gdef\@tarihkucuk{#1}}
\def\copyrightyear#1{\gdef\@copyrightyear{#1}}
\def\onaytarihi#1{\gdef\@onaytarihi{#1}} 
\def\onaysayisi#1{\gdef\@onaysayisi{#1}}
\def\evertarihi#1{\gdef\@evertarihi{#1}}
\def\evertarihii#1{\gdef\@evertarihii{#1}}
\def\savunmatarihi#1{\gdef\@savunmatarihi{#1}}
\def\onaysekli#1{\gdef\@onaysekli{#1}}
%************************************************************* 

%************************************************************* 
\def\baslik#1{\gdef\@baslik{#1}}
\def\baslikkucuk#1{\gdef\@baslikkucuk{#1}}
\def\titlesmall#1{\gdef\@titlesmall{#1}}
\def\mydots{\leavevmode\xleaders\hbox to 0.25em{\hfil.\hfil}\hfill\kern0pt}
%************************************************************* 

%*************************************************************
%\def\tezetiktxt#1{\gdef\@tezetiktxt{#1}}
%*************************************************************

%************************************************************* 
%% sayfadaki metin boyutu ile ilgili olculer
\voffset = -1.0cm \topmargin = 0pt \headsep = 0pt \headheight = 12pt 
\setlength{\textheight}{247mm}
%% genislikle ilgili olculer
\setlength{\hoffset}{-20mm} % \oddsidemargin = 0mm \evensidemargin = 0mm
\setlength{\leftmargin}{0mm}
\marginparwidth = 0mm \marginparsep = 0pt
\setlength{\textwidth}{155mm}
\parskip = 0.166in \footskip = 35pt
\tolerance=6000 \brokenpenalty=10000
\setlength{\parindent}{18pt}
\renewcommand{\baselinestretch}{1.3}
\renewcommand{\linespread}{1.3}
%************************************************************* 

%************************************************************* 
\def\thefigure{\thechapter.\@arabic\c@figure}
\def\thetable{\thechapter.\@arabic\c@table}
\def\theequation{\thechapter.\arabic{equation}}
%************************************************************* 

%************************************************************* 
\long\def\@footnotetext#1{\insert\footins{\def\baselinestretch{1}\footnotesize
    \interlinepenalty\interfootnotelinepenalty
    \splittopskip\footnotesep
    \splitmaxdepth \dp\strutbox \floatingpenalty \@MM
    \hsize\columnwidth \@parboxrestore
   \edef\@currentlabel{\csname p@footnote\endcsname\@thefnmark}\@makefntext
    {\rule{\z@}{\footnotesep}\ignorespaces
      #1\strut}}}
%************************************************************* 

%************************************************************* 
\def\@submitdate{\ifcase\the\month\or
  January\or February\or March\or April\or May\or June\or
  July\or August\or September\or October\or November\or December\fi
  \space \number\the\year}
\ifnum\month=12
    \@tempcnta=\year \advance\@tempcnta by 1
\fi
%************************************************************* 

%************************************************************* 
%%%Tezin Kapak tasarımı bu satırdan sonra yapılmaya başlar
%************************************************************* 

%************************************************************* 
%%%%Doktora Tezinin Kapak tasarımı bu satırdan sonra yapılmaya başlar
\def\coverpageMS{%
	\thispagestyle{empty}%
	\hoffset 0mm
	\null\vspace{-30mm}
	\voffset 0mm
	\textwidth 155mm	
	\begin{center}
		{
			\rm
			\setstretch{1}
			\bf\expandafter{\@universite}\\
			\bf\expandafter{\@enstitu} \par
			
		}
	\end{center}
	\vspace{20mm}
	
	\begin{center}
		{ \rm
			\bf\expandafter{\@bolum} ANABİLİM DALI}
	\end{center}
	\vspace{20mm}%
	
	\begin{center}
		{ \rm
			\setstretch{1}
			\bf\expandafter{\@baslik} \par}
	\end{center}
	\vspace{65mm}%
	
	\begin{center}
		{ \rm
			\bf\expandafter{\@teztipi}}
	\end{center}
	\vspace{20mm}%
	
	\begin{center}
		{
			\rm
			\bf\expandafter{\@yunvan \, \@yazarkucuk}\\
			
		}
	\end{center}
	\vspace{20mm}
	
	
	\begin{center}
		{
			\setstretch{1}
			\bf\expandafter{\@tarih \\ TRABZON} \par
		}
	\end{center}
	
	\newpage}
%************************************************************* 

%************************************************************* 
%%%%Doktora Tezinin Kapak tasarımı bu satırdan sonra yapılmaya başlar
\def\coverpagePhD{%
	\thispagestyle{empty}%
	\hoffset 0mm
	\null\vspace{-30mm}
	\voffset 0mm
	\textwidth 155mm	
	\begin{center}
		{
			\rm
			\setstretch{1}
			\bf\expandafter{\@universite}\\
			\bf\expandafter{\@enstitu} \par
			
		}
	\end{center}
	\vspace{20mm}
	
	\begin{center}
		{ \rm
			\bf\expandafter{\@bolum} ANABİLİM DALI}
	\end{center}
	\vspace{20mm}%
	
	\begin{center}
		{ \rm
			\setstretch{1}
			\bf\expandafter{\@baslik} \par}
	\end{center}
	\vspace{65mm}%
	
		\begin{center}
		{ \rm
			\bf\expandafter{\@teztipi}}
	\end{center}
	\vspace{20mm}%
	
	\begin{center}
		{
			\rm
			\bf\expandafter{\@yunvan \, \@yazarkucuk}\\
			
		}
	\end{center}
	\vspace{20mm}
	
	
	\begin{center}
		{
			\setstretch{1}
			\bf\expandafter{\@tarih \\ TRABZON} \par
		}
	\end{center}
	
	\newpage}
%************************************************************* 

%************************************************************* 
%%%Tezin Başlık sayfası bu satırdan sonra yapılmaya başlar
\def\titlepageMS{%
    \thispagestyle{empty}%
    \hoffset 0mm
    %    \null\vspace{1.5cm}%
    \voffset 5mm
    \textwidth 155mm
    \begin{center}
    	{
    		\rm
    		\bf\expandafter{\@universite}\\
    		\bf\expandafter{\@enstitu}\\
    		
    	}
    \end{center}
    \vspace{18mm}
    
    \begin{center}
    	{ \rm
    		\bf\expandafter{\@bolum} ANABİLİM DALI}
    \end{center}
    \vspace{13mm}%
    
    \begin{center}
    	{ \rm
    		\bf\expandafter{\@baslik}}
    \end{center}
    \vspace{30mm}%
    
    \begin{center}
    	{ \rm
    		\bf\expandafter{\@teztipi}}
    \end{center}
    \vspace{13mm}%
    
    \begin{center}
    	{
    		\rm
    		\bf\expandafter{\@yazarkucuk}\\
    		
    	}
    \end{center}
    \vspace{20mm}
    
    
    \begin{center}
    	{
    		
    		\bf\expandafter{\@tarih \\ TRABZON}
    	}
    \end{center}
\newpage}
%************************************************************* 

%%%%Tezin Başlık sayfası bu satırdan sonra yapılmaya başlar
\def\titlepagePhD{%
	\thispagestyle{empty}%
	\hoffset 0mm
	\null\vspace{-62mm}%
	\voffset 15mm
	\textwidth 155mm
	
	\begin{center}
		{
			\includegraphics[scale=0.188]{Figures/ktu_logo.pdf}		
		}
	\end{center}
	
	\vspace{-10mm}%
	\begin{center}
		{
			\rm
			\bf\expandafter{\@universite}\\
			\bf\expandafter{\@enstitu}\\
			
		}
	\end{center}	
	\begin{center}
		{ 
			\rm
			\bf\expandafter{\@bolum} ANABİLİM DALI
		}
	\end{center}
	\vspace{5mm}
	
	\begin{center}
		{ 
			\rm
			\setstretch{1}
			\bf\expandafter{\@baslik} \par
		}
	\end{center}
	\vspace{10mm}	
	
	\begin{center}
		{
			\rm
			\bf\expandafter{\@yunvan \, \@yazarkucuk \\ ORCID : \@yorcid}
		}
	\end{center}
	\vspace{0mm}
	\begin{center}
		{ 
			\rm
			\setstretch{1}
			\bf\expandafter{\@universitekucuk \ \@enstitukucuk nce \\ "\@ounvan" \\ Ünvanı Verilmesi İçin Kabul Edilen Tezdir. } \par
		}
	\end{center}
	\vspace{5mm}
	
	\begin{center}
		{ 
			\begin{table}[h]
				\centering
				\begin{tabular}{lll}
					\bf\expandafter{Tezin Enstit\"{u}ye Verildi\u{g}i Tarih} & \bf\expandafter{:} & \bf\expandafter{\@evertarihi} \\
					\bf\expandafter{Tezin Savunma Tarihi} & \bf\expandafter{:} & \bf\expandafter{\@savunmatarihi}
				\end{tabular}
			\end{table}
		}
	\end{center}
	
	\begin{center}
		{ 
			\begin{table}[h]
				\centering
				\begin{tabular}{lll}
					\bf\expandafter{Tez Dan{\i}\c{s}man{\i}} & \bf\expandafter{:} & \bf\expandafter{\@danisman} \\
					\bf\expandafter{ORCID} & \bf\expandafter{:} & \bf\expandafter{\@dorcid}
				\end{tabular}
			\end{table}
		}
	\end{center}
	\vspace{10mm}
	\begin{center}
		{
			\bf\expandafter{Trabzon \@copyrightyear}
		}
	\end{center}
	
	\newpage}
%************************************************************* 


%************************************************************* 
%%%%Yuksek Lisans Tezinin imza sayfası bu satırdan sonra yapılmaya başlar
\def\signaturepageMS{%
	\thispagestyle{empty}
	\textwidth 155mm
	\hoffset 0mm
	\voffset  0mm
	%\oddsidemargin 0.2in \evensidemargin 0.2in
	%\null\vspace{1.5cm}%
	\begin{center}
		{
			\rm
			\setstretch{1}
			\bf\expandafter{\@universite}\\
			\bf\expandafter{\@enstitu}\\ \par		
		}
	\end{center}
	\vspace{-9mm}
	
	\begin{center}
		{ \rm
			\bf\expandafter{\@bolumkucuk \ Anabilim Dalında} \\ 
			\bf\expandafter{\@yazarkucuk \ Tarafından Hazırlanan} 
		}
	\end{center}
	\vspace{-1mm}%
	
	\begin{center}
		{ \rm
			\setstretch{1}
			\bf\expandafter{\@baslik} \par} 
	\end{center}
	\vspace{5mm}%
	
	\begin{center}
		{ \rm
			\setstretch{1}
			\bf\expandafter{başlıklı bu çalışma, Enstitü Yönetim Kurulunun \@onaytarihi \ gün ve \@onaysayisi \ sayılı} \\ 
			\bf\expandafter{kararıyla oluşturulan jüri tarafından yapılan sınavda\\} 
			\bf\expandafter{\@teztipi} \\
			\bf\expandafter{olarak kabul edilmiştir.} \par
		}
	\end{center}
	\vspace{-30mm}%
	
	\begin{center}
		{ \rm
			%			\bf\expandafter{\@teztipi} \\
			%		    \bf\expandafter{olarak kabul edilmi\c{s}tir.}
		}
	\end{center}
	\vspace{18mm}%
	
	\begin{center}
		{
			\begin{table}[h]
				\centering
				\def\arraystretch{2.5}
				\begin{tabular}{llll}
					\multicolumn{2}{l}{\bf\expandafter{Jüri Üyeleri}} &     &          \\
					\bf\expandafter{Başkan}            & :            & \bf\expandafter{\@juriuyesi} & \makebox[2in][r]{\mydots} \\
					\bf\expandafter{Üye}               & :            & \bf\expandafter{\@secondreader} & \makebox[2in][r]{\mydots} \\
					\bf\expandafter{Üye}               & :            & \bf\expandafter{\@thirdreader} & \makebox[2in][r]{\mydots}  
				\end{tabular}
			\end{table}			
		}
	\end{center}
	\vspace{40mm}
	
	
	\begin{center}
		{
			
			\bf\expandafter{\@enstitumuduru \\ Enstitü Müdürü}
		}
	\end{center}	 
	
	%\makebox[2in][r]{\dotfill}
	\newpage}
%************************************************************* 


%************************************************************* 
%%%%Doktora Tezinin imza sayfası bu satırdan sonra yapılmaya başlar
\def\signaturepagePhD{%
	\thispagestyle{empty}
	\textwidth 155mm
	\hoffset 0mm
	\voffset  0mm
	%\oddsidemargin 0.2in \evensidemargin 0.2in
	%\null\vspace{1.5cm}%
	\begin{center}
		{
			\rm
			\setstretch{1}
			\bf\expandafter{\@universite}\\
			\bf\expandafter{\@enstitu}\\ \par		
		}
	\end{center}
	\vspace{-9mm}
	
	\begin{center}
		{ \rm
			\bf\expandafter{\@bolumkucuk \ Anabilim Dalında} \\ 
			\bf\expandafter{\@yazarkucuk \ Tarafından Hazırlanan} 
		}
	\end{center}
	\vspace{-1mm}%
	
	\begin{center}
		{ \rm
			\setstretch{1}
			\bf\expandafter{\@baslik} \par} 
	\end{center}
	\vspace{5mm}%
	
	\begin{center}
		{ \rm
			\setstretch{1}
			\bf\expandafter{başlıklı bu çalışma, Enstitü Yönetim Kurulunun \@onaytarihi \ gün ve \@onaysayisi \ sayılı} \\ 
			\bf\expandafter{kararıyla oluşturulan jüri tarafından yapılan sınavda\\} 
			\bf\expandafter{\@teztipi} \\
			\bf\expandafter{olarak kabul edilmiştir.} \par
		}
	\end{center}
	\vspace{-30mm}%
	
	\begin{center}
		{ \rm
%			\bf\expandafter{\@teztipi} \\
%		    \bf\expandafter{olarak kabul edilmi\c{s}tir.}
	    }
	\end{center}
	\vspace{18mm}%
	
	\begin{center}
		{
			\begin{table}[h]
				\centering
				\def\arraystretch{2.5}
				\begin{tabular}{llll}
					\multicolumn{2}{l}{\bf\expandafter{Jüri Üyeleri}} &     &          \\
					\bf\expandafter{Başkan}            & :            & \bf\expandafter{\@juriuyesi} & \makebox[2in][r]{\mydots} \\
					\bf\expandafter{Üye}               & :            & \bf\expandafter{\@secondreader} & \makebox[2in][r]{\mydots} \\
					\bf\expandafter{Üye}               & :            & \bf\expandafter{\@thirdreader} & \makebox[2in][r]{\mydots} \\
					\bf\expandafter{Üye}               & :            & \bf\expandafter{\@forthreader} & \makebox[2in][r]{\mydots} \\
					\bf\expandafter{Üye}               & :            & \bf\expandafter{\@fifthreader} & \makebox[2in][r]{\mydots} 
				\end{tabular}
			\end{table}			
		}
	\end{center}
	\vspace{10mm}
	
	
	\begin{center}
		{
			
			\bf\expandafter{\@enstitumuduru \\ Enstitü Müdürü}
		}
	\end{center}	 
	
	%\makebox[2in][r]{\dotfill}
	\newpage}
%************************************************************* 

%*************************************************************    
%%%Bu kısım Tezin özet sayfası içindir
\newenvironment{onsoz}{%
	\clearpage
	\pagenumbering{Roman}
	\setcounter{page}{3}
	%% sayfaların yüksekliği ile ilgili ölçüler
	\voffset = -1.0cm \topmargin = 0pt \headsep = 0pt \headheight = 12pt
	\setlength{\textheight}{247mm}
	%% genislikle ilgili olculer
	\setlength{\hoffset}{0mm} % \oddsidemargin = 0mm \evensidemargin = 0mm
	\setlength{\leftmargin}{30mm}
	\marginparwidth = 0mm \marginparsep = 0pt
	\setlength{\textwidth}{155mm}
	\parskip = 0.199in \footskip = 35pt
	\tolerance=6000 \brokenpenalty=10000
	\setlength{\parindent}{12pt}	
	
	\thispagestyle{plain}
	\setlength{\baselineskip}{2mm}
	\textwidth 155mm
	\null\vspace{0cm}%
	\begin{center}		
		\bf{ÖNSÖZ}
	\end{center}
	\addcontentsline{toc}{chapter}{\hspace{-0.75cm}ÖNSÖZ}
	\setstretch{1.43}
	\noindent\ignorespaces} {{\noindent} 
	\hbox to 6.1in{\hfill\lowercase{\@yazarkucuk}}
	\hbox to 6.1in{\hfill{Trabzon \@copyrightyear}}
	\vfill \newpage}
%************************************************************* 
 

%************************************************************* 
%%%Tez bildirim sayfası bu satırdan sonra yapılmaya başlar
\newenvironment{tezbildirimsayfasi}{%
	\thispagestyle{plain}
	\setlength{\baselineskip}{6mm}
	\textwidth 155mm
	\null\vspace{0.5cm}%
	\begin{center}		
		\bf{TEZ ETİK BEYANNAMESİ}
	\end{center}	 
	\addcontentsline{toc}{chapter}{\hspace{-0.75cm}TEZ ETİK BEYANNAMESİ}
	\setstretch{1.43}
	{\onehalfspacing\indent\indent\indent Doktora Tezi olarak sunduğum "\@baslikkucuk"  başlıklı bu çalışmayı baştan sona kadar danışmanım \@danisman'nun sorumluluğunda tamamladığımı, verileri/örnekleri kendim topladığımı, deneyleri/analizleri ilgili laboratuvarlarda yaptığımı/yaptırdığımı, başka kaynaklardan aldığım bilgileri metinde ve kaynakçada eksiksiz olarak gösterdiğimi, çalışma sürecinde bilimsel araştırma ve etik kurallara uygun olarak davrandığımı ve aksinin ortaya çıkması durumunda her türlü yasal sonucu kabul ettiğimi beyan ederim. \@savunmatarihi}
	\vspace{2cm}
	\noindent\ignorespaces} {{\noindent}\\ \ \\ \ \\ 
	\hbox to 6.1in{\hfill\lowercase{\@yazarkucuk}}
	\voffset = -2.0cm
	
	\newpage}
%************************************************************* 

%*************************************************************
\newcommand\lp{\lastpage@lastpage}
\newcommand\kaybit{\getpagerefnumber{KaynakcaBitis}}
\newcommand\ekbit{\getpagerefnumber{EklerBitis}}
%*************************************************************

%************************************************************* 
%%%Bu kısım Tezin özet sayfası içindir
\newenvironment{ozet}{%
   \thispagestyle{plain}
   \setlength{\baselineskip}{6mm}
    \textwidth 155mm
     \null\vspace{-2cm}%
   \begin{center}
    {
   		{\expandafter{\@teztipikucuk}} \\
   		\vspace{0.8cm}
   		{ÖZET}\\
   		\vspace{0.8cm}
   		{\expandafter{\@baslik}} \\
      	\vspace{0.8cm}
    	\@yazarkucuk \\     
     	\vspace{0.5cm}
     }
   \end{center}
	\setstretch{1}
	\begin{center}
		\@universitekucuk \\
		\@enstitukucuk \\
		\@bolumkucuk ~Anabilim Dal{\i}\\
		Dan{\i}\c{s}man: \@danisman \\
		\@copyrightyear, {\kaybit \, Sayfa}
		%ek varsa usttekı satır kapatılacak alttakı acılacak
		%\@copyrightyear, {\kaybit \, Sayfa,\, \the\numexpr \ekbit-\kaybit \relax \,Sayfa Ek}
		%\pageref{KaynakcaBitis} \pageref{EklerBitis}
	\end{center}
	\setstretch{1.43}
	\addcontentsline{toc}{chapter}{\hspace{-0.75cm}ÖZET} 
    \noindent\ignorespaces} {{
    	\begin{itemize}[leftmargin=1.5in]			
    		\item[\bf Anahtar Kelimeler:] \normalfont \@anahtarsoz
	    \end{itemize}
	} \newpage}
  
%************************************************************* 

%************************************************************* 
%%% Bu kısım Tezin abstract sayfası  içindir
\renewenvironment{abstract}{%
	\thispagestyle{plain}
	\setlength{\baselineskip}{6mm}
	\textwidth 155mm
	\null\vspace{-2cm}%
	\begin{center}		
		{
			\vspace{0.8cm}
			{\expandafter{\@thesistype}} \\
			\vspace{0.8cm}
			{SUMMARY}\\
			\vspace{0.8cm}
			{\expandafter{\@title}} \\
			\vspace{0.8cm}
			\@yazarkucuk \\     
			\vspace{0.5cm}
		}
	\end{center}
	\setstretch{1}
	\begin{center}
		\@universitysmall \\
		\@institutesmall \\
		Department of \@deptsmall\\
		Supervisor: \@supervisor \\
		\@copyrightyear, {\kaybit \, Pages}
		%\@copyrightyear, {\kaybit \, Pages,\, \the\numexpr \ekbit-\kaybit \relax \,Pages Appendix}
		%{\pageref{KaynakcaBitis} Pages}
	\end{center}
	\setstretch{1.43}
	\addcontentsline{toc}{chapter}{\hspace{-0.75cm}SUMMARY} 
	\noindent\ignorespaces} {{		
		\begin{itemize}[leftmargin=0.92in]			
			\item[\bf Key Words:] \normalfont \@keywords
		\end{itemize}
	}\newpage}
%************************************************************* 


%************************************************************* 
%%% Bu kısım Tezin abstract sayfası  içindir dokunmayiniz
%\newenvironment{icindekiler}{	
%}
%*************************************************************



%*************************************************************
%%%Bu kısım Başlıkları Türkçeleştirmek için yazılmıştır.

\renewcommand\contentsname{
\begin{center}
\normalfont\selectfont\normalsize \bf İÇİNDEKİLER
\end{center}}

\renewcommand\listfigurename{
\begin{center}	
\normalfont\selectfont\normalsize \bf ŞEKİLLER DİZİNİ
\end{center}}

\renewcommand\listtablename{
\begin{center}
\normalfont\selectfont\normalsize \bf TABLOLAR DİZİNİ
\end{center}}

%\renewcommand\bibname{
%	\normalfont\selectfont\normalsize \bf KAYNAKLAR
%}

\renewcommand{\figurename}{Şekil}
\renewcommand{\tablename}{Tablo}
%*************************************************************
\renewcommand*\l@figure{\@dottedtocline{1}{1.5em}{3.0em}}
\renewcommand*\l@table{\@dottedtocline{1}{1.5em}{3.0em}}
%*************************************************************
% Bu kısım bazı çizelgelerin boyunu ayarlamak içın yazılmıştır
\newcommand\totextwidth[1]{%
  \sbox{\mytabularbox}{#1}%
  \figwidthc=\wd\mytabularbox%
  \textwidthc=\textwidth%
  \FPdiv\scaleratio{\the\textwidthc}{\the\figwidthc}%
  \FPmin\scaleratio{\scaleratio}{1}%
  \scalebox{\scaleratio}{\usebox{\mytabularbox}}%
}
%*************************************************************
% Bu kisim Chapter yazisinin gorunmemesini saglamak icin
\makeatletter
\renewcommand{\@makechapterhead}[1]{%
%\vspace*{5mm}%
\voffset 10mm
{\setlength{\parindent}{2pt} \raggedright \normalfont
\bfseries\thechapter #1
\par\nobreak\vspace{8pt}}}

\makeatother
%*************************************************
\pagestyle{headings} 
 
\makeatother



