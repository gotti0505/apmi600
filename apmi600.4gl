# Prog. Version..: '5.10.16-10.10.14(00009)'     #
#
# Pattern name...: apmi600.4gl
# Descriptions...: 供應商基本資料維護作業
# Date & Author..: 92/12/28 By Keith
# Modify.........: 93/01/17 By David 廠商若為EMPL或MISC時可不輸入統一編號
# Modify.......  : 98/11/13 By Sophia 增加 pmc902,pmc903
# Modify.........: No:8184 03/09/10 By Mandy 4.資料拋轉  按^P查詢時 -> CALL q_azp 的display 錯誤,應為:DISPLAY tm.plant[l_c] TO s_plant[l_s].plant
# Modify.........: No:A086 04/06/23 By Danny 增加自動編碼
# Modify.........: No.MOD-470041 04/07/19 By Wiky 修改INSERT INTO...
# Modify.........: No.MOD-470505 04/07/23 By ching OPEN WINDOW 未 CLOSE WINDOW
# Modify.........: No.MOD-480225 04/08/09 By Wiky 開窗修改pmc24
# Modify.........: No.MOD-480105 04/08/20 By Wiky 統一編號不須開窗
# Modify.........: No.MOD-480057 04/08/23 By Wiky open window 選取資料後沒有按enter,or 移下一欄位時,直接按[確定]會顯示無此資料庫
# Modify.........: No.MOD-480162 04/08/23 By Wiky 新增apmi600b 畫面
# Modify.........: No:MOD-490371 04/09/23 By Kitty Controlp 未加display
# Modify.........: No:FUN-4A0062 04/10/07 By Smapmin 更改傳回值變數名稱
# Modify.........: No.MOD-4B0007 04/11/01 By Mandy 在INSERT INTO apl_file之前先做刪除
# Modify.........: No.MOD-4B0255 04/11/26 By Mandy 串apmi600時,可針對此供應商顯示相關的資料,如果供應商空白則可查詢全部的資料
# Modify.........: No:FUN-4C0056 04/12/08 By Carol Q,U,R 加入權限控管處理
# Modify.........: No:MOD-4C0099 04/12/16 By Mandy apmi600 複製時, 付款廠商&出貨廠商應該與廠商編號相同!,廠商簡稱及統一編號給NULL
# Modify.........: No.FUN-4C0104 05/01/05 By alex 修改 4js bug 定義超長
# Modify.........: No.FUN-4C0095 05/01/24 By Mandy 報表轉XML
# Modify.........: No:MOD-530328 05/03/26 By kim 勾選列印廠商地址，報表未印出
# Modify.........: No:MOD-530492 05/03/26 By Mandy 複製時,重要備註沒有複製到,請補入.
# Modify.........: No:MOD-530513 05/03/26 By Mandy 列印時,如有作廢的廠商,資料會位移
# Modify.........: No:MOD-530531 05/03/26 By Mandy 已作廢的廠商,還是可以設定為出貨廠商-->NG
# Modify.........: No:MOD-530491 05/03/26 By Mandy 作廢後,重查-->作廢圖示不會重SHOW
# Modify.........: No:MOD-530432 05/03/26 By Mandy 廠商性質='2.付款商'時,出貨廠商應控管不應該可以key 相同的廠商代碼
# Modify.........: No:MOD-530714 05/03/28 By Mandy pmc28 不可預設值為 20
# Modify.........: No:FUN-550091 05/05/25 By Smapmin 新增地區欄位
# Modify.........: No:MOD-550023 05/06/17 By kim 稅別自動填入舊值,離開欄位後,卻未帶出該稅別說明
# Modify.........: No:MOD-570066 05/07/12 By Nicola 錯誤訊息修改
# Modify.........: No:MOD-580018 05/08/02 By Kevin display to pmy02 not pmc02
# Modify.........: No.MOD-580323 05/08/28 By jackie 將程序中寫死為中文的錯誤信息改由p_ze維護
# Modify.........: No.FUN-610012 06/01/24 By cl 新增資料屬性 5.廣告代理商(當aza50=1時顯示)
# Modify.........: No:FUN-620063 06/03/01 By saki 自訂欄位功能
# Modify.........: No:FUN-590083 06/03/15 BY Alexstar 新增資料多語言功能
# Modify.........: No:FUN-630102 06/04/06 BY Sarah pmc14新增選項6.代送商
# Modify.........: No:TQC-640097 08/04/06 BY Alexstar 於新增資料前先呼叫資料多語言提示功能，用來Refresh
# Modify.........: No:TQC-640098 08/04/06 BY vivien 新增日期控制條件，修改欄位帶出功能
# Modify.........: No:MOD-640290 08/04/10 BY kim 新增時廠商不開窗
# Modify.........: No:MOD-650015 06/05/05 By rainy 取消輸入時的"預設上筆"功能
# Modify.........: No:FUN-660129 06/06/19 By Wujie cl_err --> cl_err3
# Modify.........: NO:FUN-680010 06/08/11 By Joe SPC整合專案-基本資料傳遞
# Modify.........: No:MOD-680067 06/08/24 By Claire 付款條件,價格條件,地區別,國別,區域null時,中文名稱要清空
# Modify.........: NO:FUN-690021 06/09/13 By Mandy 廠商主檔申請作業
# Modify.........: No:FUN-680136 06/09/13 By Jackho 欄位類型修改
# Modify.........: No:FUN-660067 06/10/03 By rainy 新增欄位 pmc912(採購發出/變更是否mail通知廠商？)
# Modify.........: No:FUN-660190 06/10/13 By chenzhong 單檔顯示目前資料所在筆數
# Modify.........: No:FUN-6A0007 06/10/26 By kim GP3.5 台虹保稅客製功能回收修改
# Modify.........: No:FUN-6A0162 06/11/11 By jamie 1.FUNCTION _q() 一開始應清空key值
#                                                  2.新增action"相關文件"
# Modify.......... No.TQC-6B0103 06/11/20 By alexstar 做 'R' delete 時,相關多語言檔(gbc_file)需要一併處理
# Modify.........: No:FUN-690023 06/12/18 By jamie 改判斷occacti
# Modify.........: No:FUN-690024 06/12/18 By jamie 改判斷pmcacti
# Modify.........: No:TQC-6C0060 07/01/08 By alexstar 多語言功能單純化
# Modify.........: No.TQC-6B0105 07/03/12 By carrier 連續兩次查詢,第二次查不到資料,做修改等操作會將當前筆停在上次查詢到的資料上
# Modify.........: NO.FUN-720041 07/03/19 by Yiting 增加pmc1917,pmc1918,pmc1919欄位抓取
# Modify.........: No:CHI-740014 07/04/17 By kim 行業別架構
# Modify.........: No:MOD-740330 07/04/23 By kim 列印時按取消程式會當出
# Modify.........: No:CHI-740027 07/04/26 By Mandy 當aoos010設定為走廠商申請流程時，不可使用複製功能
# Modify.........: No:FUN-750051 07/05/22 By johnray 連續二次查詢key值時,若第二次查詢不到key值時,會顯示錯誤key值
# Modify.........: No:MOD-790049 07/09/14 By claire 資料拋轉選擇更新時若不存在於目的資料庫則將其INSERT到目的資料庫中!
# Modify.........: No.MOD-790131 07/09/26 By claire 統一編號邏輯性檢查調整
# Modify.........: No:FUN-7B0080 07/11/15 By saki 自定義欄位架構更動
# Modify.........: No:CHI-7B0023/CHI-7B0039  07/11/14 By kim 移除GP5.0行業別功能的所有程式段
# Modify.........: No:TQC-7B0152 07/11/28 By Judy 資料拋轉時，對話框信息更改
# Modify.........: No:FUN-7C0004 07/12/04 By rainy 新增Action 內部交易資料維護 pov
# Modify.........: No:FUN-7C0050 08/01/15 By Johnray 增加接收參數段for串查
# Modify.........: No:MOD-810038 08/01/28 By claire 統一編號於IFX資料庫長度有問題
# Modify.........: No:FUN-820034 08/02/21 By mike 資料中心功能
#                                         1.加入pmc1920 & vender_list array
#                                         2.加入bp()
# Modify.........: No:FUN-820028 08/03/20 By lilingyu 增加資料拋轉前的資料有效否判斷
# Modify.........: No:FUN-820028 08/03/27 By lilingyu 修改s_apmi600_carry的參數
# Modify.........: No:MOD-830200 08/04/07 By claire 取消FUN-7C0052
# Modify.........: NO.FUN-840018 08/04/07 BY yiting 增加一個頁面放置清單資料
# Modify.........: NO.FUN-840033 08/04/08 BY yiting 1.apmp600 call apmi600直接開啟主畫面
#                                                   2.按資料下載沒有資料
# Modify.........: No:FUN-850100 08/05/19 By Nicola 批/序號管理第二階段
# Modify.........: No:TQC-860019 08/06/09 By cliare ON IDLE 控制調整
# Modify.........: NO.FUN-860036 08/06/17 by kim  MDM整合 for GP5.1
# Modify.........: No:MOD-860223 08/07/11 By Smapmin 拋轉資料時,insert的where條件應加上key值
# Modify.........: No:MOD-860269 08/07/11 By Smapmin apmi600依照axmi221調整國別/區域的修改方式
# Modify.........: No:CHI-860042 08/07/22 By xiaofeizhu 加入一般采購和委外采購的判斷
# Modify.........: No:FUN-880094 08/08/28 By sherry 預付金額是否與采購單勾稽
# Modify.........: No:FUN-870166 08/09/03 By kevin 改為call aws_mdmdata
# Modify.........: No:CHI-880031 08/09/09 By xiaofeizhu 查出資料后,應該停在第一筆資料上,不必預設是看資料清單,有需要瀏覽,再行點選
# Modify.........: NO.FUN-870037 08/09/15 by Yiting add pmc281 手續費內扣/外加
# Modify.........: No.FUN-840052 08/09/23 By dxfwo  CR報表
# Modify.........: No:MOD-890203 08/09/25 By Smapmin 修改客戶簡稱noentry的控管
# Modify.........: No:FUN-890113 08/10/27 By kevin 移除MDM刪除功能
# Modify.........: No:CHI-8C0017 08/12/17 By xiaofeizhu 一般及委外問題處理
# Modify.........: No:TQC-940177 09/04/30 By mike 跨庫的SQL語句一律使用s_dbstring()的寫法
# Modify.........: No:MOD-940422 09/05/04 By Smapmin pmc28為0時pmc281就為noentry以及pmc281的值為NULL,此處的控管應加上pmc28 is null的判斷.
# Modify.........: No.TQC-940183 09/04/30 By Carrier rowid定義規範化
# Modify.........: No:TQC-950066 09/05/12 By chenyu 無效的資料不可以刪除
# Modify.........: No:TQC-960321 09/06/23 By sherry 已審核的資料不可以刪除
# Modify.........: No.FUN-970022 09/07/08 By chenmoyan ADD pmc57
# Modify.........: No.MOD-970184 09/07/21 By sabrina pmc911在uni區無泰文語言選項，將pmc911改為動態抓取語言
# Modify.........: No.TQC-970249 09/07/23 By lilingyu "關系人資料"窗口錄入一筆錯誤的客戶編號,報錯信息錯誤
# Modify.........: No:FUN-9A0056 09/12/09 By Lilan 加入MES整合功能
# Modify.........: No.FUN-9B0098 10/02/24 by tommas delete cl_doc
# Modify.........: No:FUN-A30110 10/03/30 By Carrier 客戶簡稱修改
# Modify.........: No:MOD-A70076 10/07/09 By Smapmin 資料清單頁籤需要有基本功能action可使用
# Modify.........: No:MOD-A90016 10/09/02 By Smapmin 刪除時,會判斷是否存在未結案的採購單,若存在則不能修改.
# Modify.........: No:MOD-A90025 10/09/06 By Smapmin 刪除時,會判斷是否存在未結案的採購單,若存在則不能修改.也要考慮送簽的單子

DATABASE ds

#GLOBALS "../../config/top.global" #111024 by gotti mark test
GLOBALS "../../../tiptop/config/top.global" #111024 by gotti add
#GLOBALS "../../sub/4gl/s_data_center.global"   #No.FUN-820034 111024 by gotti mark
GLOBALS "../../../tiptop/sub/4gl/s_data_center.global"   #111024 by gotti add

DEFINE g_argv1     LIKE pmc_file.pmc01     #FUN-7C0050
DEFINE g_argv2     STRING                  #FUN-7C0050      #執行功能
DEFINE
#  g_argv1       LIKE type_file.chr1,    #No.FUN-680136 VARCHAR(1)   #1.採購廠商(由採購部門維護)
                                                                  #          (廠商編號循編號原則)
                                                                  #          (維護程式:apmi6001)
                                                                  #2.雜項廠商(由請款人員維護)(僅用於AP系統)
                                                                  #          (廠商編號建議使用統一編號)
                                                                  #          (維護程式:apmi6002)
                                                                  #3.員工    (由人事系統轉入或臨時輸入)
                                                                  #          (廠商編號建議使用員工編號)
                                                                  #          (維護程式:apmi6003)
#   g_argv2      LIKE pmc_file.pmc01, #供應廠商編號   #MOD-4B0255
   tm            RECORD
       plant     ARRAY[20]  OF LIKE azp_file.azp01,      #No.FUN-680136 VARCHAR(10)
       dbs       ARRAY[20]  OF LIKE type_file.chr21     #No.FUN-680136 VARCHAR(21)
                 END RECORD,
   g_pmc         RECORD LIKE pmc_file.*,
   g_pmc_t       RECORD LIKE pmc_file.*,
   g_pmc_o       RECORD LIKE pmc_file.*,
   g_pmc01_t     LIKE pmc_file.pmc01,    #供應廠商編號
   g_pmc24_t     LIKE pmc_file.pmc24,    #供應廠商統一編號
   g_pmc_rowid   LIKE type_file.chr18,   #No.FUN-680136 INT # saki 20070821 rowid chr18 -> num10
   g_choice	 LIKE type_file.chr1,    #No.FUN-680136 VARCHAR(01)
   g_wc,g_sql    STRING,      #NO.TQC-630166
   l_buf         LIKE type_file.chr1000, #No.FUN-680136 VARCHAR(30)
   g_bxr02_1     LIKE bxr_file.bxr02,   #FUN-6A0007
   g_bxr02_2     LIKE bxr_file.bxr02    #FUN-6A0007

DEFINE g_forupd_sql          STRING   #SELECT ... FOR UPDATE NOWAIT SQL
DEFINE g_before_input_done   LIKE type_file.num5    #No.FUN-680136 SMALLINT
DEFINE g_tmp_prog            STRING
DEFINE   g_chr           LIKE type_file.chr1    #No.FUN-680136 VARCHAR(1)
DEFINE   g_cnt           LIKE type_file.num10   #No.FUN-680136 INTEGER
DEFINE   g_i             LIKE type_file.num5    #count/index for any purpose  #No.FUN-680136 SMALLINT
DEFINE   g_msg           LIKE ze_file.ze03      #No.FUN-680136 VARCHAR(72)
DEFINE   g_row_count     LIKE type_file.num10   #No.FUN-680136 INTEGER
DEFINE   g_curs_index    LIKE type_file.num10   #No.FUN-680136 INTEGER
DEFINE   g_jump          LIKE type_file.num10   #No.FUN-680136 INTEGER
DEFINE   g_on_change     LIKE type_file.num5    #No.FUN-680136 SMALLINT   #FUN-590083
DEFINE   g_no_ask       LIKE type_file.num5    #No.FUN-680136 SMALLINT
DEFINE   g_chr1          LIKE type_file.chr1      #FUN-690021 add  #No.FUN-680136 VARCHAR(1)
DEFINE   g_chr2          LIKE type_file.chr1      #FUN-690021 add  #No.FUN-680136 VARCHAR(1)
DEFINE   g_chr3          LIKE type_file.chr1      #FUN-690021 add  #No.FUN-680136 VARCHAR(1)
DEFINE   l_table         STRING                 #No.FUN-840052
DEFINE   l_sql           STRING                 #No.FUN-840052
DEFINE   g_str           STRING                 #No.FUN-840052


#No.FUN-820034  --Begin
DEFINE  g_pmc_l    DYNAMIC ARRAY OF RECORD   #程式變數(Program Variables)
          pmc01    LIKE pmc_file.pmc01,
          pmc03    LIKE pmc_file.pmc03,
          pmc081   LIKE pmc_file.pmc081,
          pmc24    LIKE pmc_file.pmc24,
          pmc14    LIKE pmc_file.pmc14,
          pmc02    LIKE pmc_file.pmc02,
          pmc30    LIKE pmc_file.pmc30,
          pmc04    LIKE pmc_file.pmc04,
          pmc901   LIKE pmc_file.pmc901,
          pmc05    LIKE pmc_file.pmc05,
          pmcacti  LIKE pmc_file.pmcacti,
          pmc1920  LIKE pmc_file.pmc1920,
          pmcud02  LIKE pmc_file.pmcud02
                   END RECORD
DEFINE g_pmc_x      DYNAMIC ARRAY OF RECORD   #程式變數(Program Variables)
          sel      LIKE type_file.chr1,
          pmc01    LIKE pmc_file.pmc01
                   END RECORD
DEFINE g_gev04     LIKE gev_file.gev04
DEFINE l_ac1       LIKE type_file.num10
DEFINE g_rec_b1    LIKE type_file.num10
DEFINE g_bp_flag   LIKE type_file.chr10
DEFINE g_flag2     LIKE type_file.chr1
DEFINE g_gew06     LIKE gew_file.gew06
DEFINE g_gew07     LIKE gew_file.gew07
#No.FUN-820034  --End
DEFINE g_flag      LIKE type_file.num5          #No.FUN-A30110
DEFINE g_flag1     LIKE type_file.num5          #No.FUN-A30110
DEFINE g_pmc03_t   LIKE pmc_file.pmc03          #No.FUN-A30110

MAIN
   DEFINE l_time          LIKE type_file.chr8  	#計算被使用時間  #No.FUN-680136 VARCHAR(8)
   DEFINE l_aza           LIKE aza_file.aza50   #No.FUN-680136 VARCHAR(1)    #FUN-610012
   DEFINE cb              ui.ComBobox           #FUN-610012

   OPTIONS                             	#改變一些系統預設值
      INPUT NO WRAP,			#輸入的方式: 不打轉
      FIELD ORDER FORM                  #整個畫面會依照p_per所設定的欄位順序(忽略4gl寫的順序)  #CHI-740014
   DEFER INTERRUPT                      #擷取中斷鍵, 由程式處理

   IF (NOT cl_user()) THEN
      EXIT PROGRAM
   END IF

   WHENEVER ERROR CALL cl_err_msg_log

   IF (NOT cl_setup("CPM")) THEN
      EXIT PROGRAM
   END IF

#No:FUN-840052---Begin
   LET g_sql = " pmcacti.pmc_file.pmcacti,",
               " pmc01.pmc_file.pmc01,",
               " pmc03.pmc_file.pmc03,",
               " pmc081.pmc_file.pmc081,",
               " pmc24.pmc_file.pmc24,",
               " pmcud02.pmc_file.pmcud02,",
               " pmc10.pmc_file.pmc10,",
               " pmc11.pmc_file.pmc11,",
               " pmc091.pmc_file.pmc091,",
               " pmc52.pmc_file.pmc52,",
               " pmf02.pmf_file.pmf02,",
               " pmf03.pmf_file.pmf03,",
               " pmf08.pmf_file.pmf08,",
               " pmf09.pmf_file.pmf09,",
               " nmt02.nmt_file.nmt02 "
   LET l_table = cl_prt_temptable('apmi600',g_sql) CLIPPED
   IF  l_table = -1 THEN EXIT PROGRAM END IF
   LET g_sql = "INSERT INTO ",g_cr_db_str CLIPPED,l_table CLIPPED,
               " VALUES(?,?,?,?,?,  ?,?,?,?,?,  ?,?,?,?,? )"
   PREPARE insert_prep FROM g_sql
   IF STATUS THEN
      CALL cl_err('insert_prep:',status,1) EXIT PROGRAM
   END IF
#No:FUN-840052---End

   CALL cl_used(g_prog,l_time,1) RETURNING l_time  #計算使用時間 (進入時間) #No:MOD-580088  HCN 20050818

   INITIALIZE g_pmc.* TO NULL
   INITIALIZE g_pmc_t.* TO NULL
   INITIALIZE g_pmc_o.* TO NULL

   LET g_forupd_sql = "SELECT * FROM pmc_file WHERE ROWID = ? FOR UPDATE NOWAIT "
   DECLARE i600_cl CURSOR FROM g_forupd_sql              # LOCK CURSOR

   OPEN WINDOW i600_w WITH FORM "cpm/42f/apmi600"
       ATTRIBUTE (STYLE = g_win_style CLIPPED) #No:FUN-580092 HCN

    CALL cl_ui_init()

   #CALL cl_set_comp_visible("page04",g_sma.sma79='Y')  #FUN-6A0007 #111024 by gotti mark
   CALL cl_set_comp_visible("page04",g_sma.sma79='N')  #FUN-6A0007 #111024 by gotti add 增加負責人
   CALL cl_set_act_visible("abx_maintain",g_sma.sma79='Y') #FUN-6A0007

   LET g_argv1 = ARG_VAL(1)
    LET g_argv2 = ARG_VAL(2) #MOD-4B0255

    #MOD-4B0255
  #IF NOT cl_null(g_argv2) THEN
   IF NOT cl_null(g_argv1) THEN  #FUN-7C0050
       LET g_action_choice="query"
       IF cl_chk_act_auth() THEN
           CALL i600_q()
       END IF
   END IF
    #MOD-4B0255(end)

    #FUN-610012--Begin
   SELECT aza50 INTO l_aza FROM aza_file
   IF l_aza='N' OR (l_aza IS NULL) THEN
      LET cb = ui.ComBobox.forName("pmc14")
      CALL cb.removeItem(5)
     #CALL cb.removeItem(6)   #FUN-630102 mark
   END IF
    #FUN-610012--End
   #FUN-690021-----add
    IF g_aza.aza62 = 'N' THEN #不使用廠商申請作業時,才可按1.確認 2.取消確認 3.新增
        CALL cl_set_act_visible("confirm,unconfirm,insert",TRUE)
    ELSE
        CALL cl_set_act_visible("confirm,unconfirm,insert",FALSE)
    END IF
   #FUN-690021-----add
   #No:FUN-880094---Begin
   SELECT apz61 INTO g_apz.apz61 FROM apz_file
    WHERE apz00 = '0'
   IF g_apz.apz61 = '3' THEN
      CALL cl_set_comp_visible("pmc913", TRUE)
   ELSE
   	  CALL cl_set_comp_visible("pmc913", FALSE)
   END IF
   #No:FUN-880094---End
   #WHILE TRUE      ####040512
   LET g_action_choice=""
   CALL cl_set_combo_lang("pmc911")           #MOD-970184 add
   CALL i600_menu()
   #IF g_action_choice="exit" THEN EXIT WHILE END IF     ####040512
    #END WHILE    ####040512

   CLOSE WINDOW i600_w
     CALL cl_used(g_prog,l_time,2) RETURNING l_time #No:MOD-580088  HCN 20050818
END MAIN

FUNCTION i600_cs()
   CLEAR FORM
   INITIALIZE g_pmc.* TO NULL    #No.FUN-750051
#IF cl_null(g_argv2) THEN #MOD-4B0255(加包IF....ELSE ....END IF)
 IF g_argv1<>' ' THEN                     #FUN-7C0050
    LET g_wc=" pmc01='",g_argv1,"'"       #FUN-7C0050
 ELSE
   # modify 02/12/06 NO.A045
   CONSTRUCT BY NAME g_wc ON                    # 螢幕上取條件
    # pmc01, pmc03, pmc081, pmc082, pmc24, pmc903, pmc14, pmc05, pmc02,  #No.FUN-820034
      pmc01, pmc03, pmc081, pmc082, pmc24, pmc903, pmc14, pmc1920, pmc05, pmc02, #No.FUN-820034
      pmc30, pmc04, pmc901,
      pmc17, pmc49, pmc22 , pmc47, pmc54,  pmc911,
      #pmc48, pmc902,pmc27 , pmc50, pmc51,  pmc28, pmc912,  #FUN-660067 add pmc912
      pmc48, pmc902,pmc27 , pmc50, pmc51,  pmc28, pmc281,pmc912,  #FUN-660067 add pmc912 #NO.FUN-870037 add pmc281
      pmc913,    #No:FUN-880094 add
      #pmc06, pmc07, pmc904, pmc091, pmc092, pmc093, pmc094, pmc095,   #FUN-550091
      pmc908,pmc07, pmc06, pmc904, pmc091, pmc092, pmc093, pmc094, pmc095,   #FUN-550091
      pmc52, pmc53, pmc15, pmc16,
      pmc56, pmc55, pmc57, pmc10 , pmc11, pmc12,      #FUN-970022 ADD pmc57
      pmc1917,pmc1918,pmc1919,     #FUN-720041
      #FUN-6A0007...............begin
      pmc1912,
      pmc1913,
      pmc1914,pmc1915,pmc1916,
      #FUN-6A0007...............end
      #No:FUN-620063 --start--
      pmcud01,pmcud02,pmcud03,pmcud04,pmcud05,
      pmcud06,pmcud07,pmcud08,pmcud09,pmcud10,
      pmcud11,pmcud12,pmcud13,pmcud14,pmcud15,
      #No:FUN-620063 ---end---
      pmcuser,pmcgrup,pmcmodu,pmcdate,pmcacti
              #No:FUN-580031 --start--     HCN
              BEFORE CONSTRUCT
                 CALL cl_qbe_init()
              #No:FUN-580031 --end--       HCN

      ON ACTION CONTROLP
         CASE
            WHEN INFIELD(pmc01)
               CALL cl_init_qry_var()
               LET g_qryparam.state = "c"
               LET g_qryparam.form = "q_pmc"
               CALL cl_create_qry() RETURNING g_qryparam.multiret
               DISPLAY g_qryparam.multiret TO pmc01
          {   WHEN INFIELD(pmc24)  #No.MOD-480105
               CALL cl_init_qry_var()
               LET g_qryparam.state = "c"
                LET g_qryparam.form = "q_pmc6"   #MOD-480225
               CALL cl_create_qry() RETURNING g_qryparam.multiret
               DISPLAY g_qryparam.multiret TO pmc24
         }
            WHEN INFIELD(pmc03)
               CALL cl_init_qry_var()
               LET g_qryparam.state = "c"
               LET g_qryparam.form = "q_pmc"
               CALL cl_create_qry() RETURNING g_qryparam.multiret
               DISPLAY g_qryparam.multiret TO pmc03
           #No.FUN-820034  --Begin
            WHEN INFIELD(pmc1920)
               CALL cl_init_qry_var()
               LET g_qryparam.state = "c"
               LET g_qryparam.form = "q_azp"
               CALL cl_create_qry() RETURNING g_qryparam.multiret
               DISPLAY g_qryparam.multiret TO pmc1920
               NEXT FIELD pmc1920
           #No.FUN-820034  --End
            WHEN INFIELD(pmc02)
               CALL cl_init_qry_var()
               LET g_qryparam.state = "c"
               LET g_qryparam.form = "q_pmy"
               CALL cl_create_qry() RETURNING g_qryparam.multiret
               DISPLAY g_qryparam.multiret TO pmc02
            WHEN INFIELD(pmc04) #查詢付款廠商檔
               CALL cl_init_qry_var()
               LET g_qryparam.state = "c"
               LET g_qryparam.form = "q_pmc"
               CALL cl_create_qry() RETURNING g_qryparam.multiret
               DISPLAY g_qryparam.multiret TO pmc04
            WHEN INFIELD(pmc901) #查詢出貨廠商檔
               CALL cl_init_qry_var()
               LET g_qryparam.state = "c"
               LET g_qryparam.form = "q_pmc"
               CALL cl_create_qry() RETURNING g_qryparam.multiret
               DISPLAY g_qryparam.multiret TO pmc901
            WHEN INFIELD(pmc06) #查詢區域檔
               CALL cl_init_qry_var()
               LET g_qryparam.state = "c"
               LET g_qryparam.form = "q_gea"
               CALL cl_create_qry() RETURNING g_qryparam.multiret
               DISPLAY g_qryparam.multiret TO pmc06

            WHEN INFIELD(pmc07) #查詢國別檔
               CALL cl_init_qry_var()
               LET g_qryparam.state = "c"
               LET g_qryparam.form = "q_geb"
               CALL cl_create_qry() RETURNING g_qryparam.multiret
               DISPLAY g_qryparam.multiret TO pmc07
               NEXT FIELD pmc07

#FUN-550091
            WHEN INFIELD(pmc908) #查詢地區檔
               CALL cl_init_qry_var()
               LET g_qryparam.state = "c"
               LET g_qryparam.form = "q_geo"
               CALL cl_create_qry() RETURNING g_qryparam.multiret
               DISPLAY g_qryparam.multiret TO pmc908
               NEXT FIELD pmc908
#END FUN-550091
            WHEN INFIELD(pmc15) #查詢地址資料檔 (0:表送貨地址)
               CALL cl_init_qry_var()
               LET g_qryparam.state = "c"
               LET g_qryparam.form = "q_pme"
               CALL cl_create_qry() RETURNING g_qryparam.multiret
               DISPLAY g_qryparam.multiret TO pmc15
            WHEN INFIELD(pmc16) #查詢地址資料檔 (1:表帳單地址)
               CALL cl_init_qry_var()
               LET g_qryparam.state = "c"
               LET g_qryparam.form = "q_pme"
               CALL cl_create_qry() RETURNING g_qryparam.multiret
               DISPLAY g_qryparam.multiret TO pmc16
            WHEN INFIELD(pmc17) #查詢付款條件資料檔(pma_file)
               CALL cl_init_qry_var()
               LET g_qryparam.state = "c"
               LET g_qryparam.form = "q_pma"
               CALL cl_create_qry() RETURNING g_qryparam.multiret
               DISPLAY g_qryparam.multiret TO pmc17
               CALL i600_pmc17(g_pmc.pmc17)
               NEXT FIELD pmc17
            WHEN INFIELD(pmc22) #查詢幣別資料檔
               CALL cl_init_qry_var()
               LET g_qryparam.state = "c"
               LET g_qryparam.form = "q_azi"
               CALL cl_create_qry() RETURNING g_qryparam.multiret
               DISPLAY g_qryparam.multiret TO pmc22
            WHEN INFIELD(pmc47) #
               CALL cl_init_qry_var()
               LET g_qryparam.state = "c"
               LET g_qryparam.form = "q_gec"
               CALL cl_create_qry() RETURNING g_qryparam.multiret
               DISPLAY g_qryparam.multiret TO pmc47
            WHEN INFIELD(pmc55) #
               CALL cl_init_qry_var()
               LET g_qryparam.state = "c"
               LET g_qryparam.form = "q_nmt"
               CALL cl_create_qry() RETURNING g_qryparam.multiret
               DISPLAY g_qryparam.multiret TO pmc55
            WHEN INFIELD(pmc49) #價格條件
               CALL cl_init_qry_var()
               LET g_qryparam.state = "c"
               LET g_qryparam.form = "q_oah"
               CALL cl_create_qry() RETURNING g_qryparam.multiret
               DISPLAY g_qryparam.multiret TO pmc49
            #add 02/12/06 NO.A045
            WHEN INFIELD(pmc54) #佣金
               CALL cl_init_qry_var()
               LET g_qryparam.state = "c"
               LET g_qryparam.form = "q_ofs"
               CALL cl_create_qry() RETURNING g_qryparam.multiret
               DISPLAY g_qryparam.multiret TO pmc54
            #FUN-6A0007...............begin
            WHEN INFIELD(pmc1912) #保稅入庫異動原因代碼
               CALL cl_init_qry_var()
               LET g_qryparam.state = "c"
               LET g_qryparam.form = "q_bxr"
               CALL cl_create_qry() RETURNING g_qryparam.multiret
               DISPLAY g_qryparam.multiret TO pmc1912
            WHEN INFIELD(pmc1913) #保稅倉退異動原因代碼
               CALL cl_init_qry_var()
               LET g_qryparam.state = "c"
               LET g_qryparam.form = "q_bxr"
               CALL cl_create_qry() RETURNING g_qryparam.multiret
               DISPLAY g_qryparam.multiret TO pmc1913
            #FUN-6A0007...............end
            #No:FUN-620063 --start--  #No:FUN-7B0080 --start-- 整段修改
            WHEN INFIELD(pmcud02)
               CALL cl_dynamic_qry() RETURNING g_qryparam.multiret
               DISPLAY g_qryparam.multiret TO pmcud02
               NEXT FIELD pmcud02
            WHEN INFIELD(pmcud03)
               CALL cl_dynamic_qry() RETURNING g_qryparam.multiret
               DISPLAY g_qryparam.multiret TO pmcud03
               NEXT FIELD pmcud03
            WHEN INFIELD(pmcud04)
               CALL cl_dynamic_qry() RETURNING g_qryparam.multiret
               DISPLAY g_qryparam.multiret TO pmcud04
               NEXT FIELD pmcud04
            WHEN INFIELD(pmcud05)
               CALL cl_dynamic_qry() RETURNING g_qryparam.multiret
               DISPLAY g_qryparam.multiret TO pmcud05
               NEXT FIELD pmcud05
            WHEN INFIELD(pmcud06)
               CALL cl_dynamic_qry() RETURNING g_qryparam.multiret
               DISPLAY g_qryparam.multiret TO pmcud06
               NEXT FIELD pmcud06
            #No:FUN-620063 ---end---  #No:FUN-7B0080 ---end---
            OTHERWISE EXIT CASE
         END CASE
      ON IDLE g_idle_seconds
         CALL cl_on_idle()
         CONTINUE CONSTRUCT

      ON ACTION about         #MOD-4C0121
         CALL cl_about()      #MOD-4C0121

      ON ACTION help          #MOD-4C0121
         CALL cl_show_help()  #MOD-4C0121

      ON ACTION controlg      #MOD-4C0121
         CALL cl_cmdask()     #MOD-4C0121


		#No:FUN-580031 --start--     HCN
                 ON ACTION qbe_select
         	   CALL cl_qbe_select()
                 ON ACTION qbe_save
		   CALL cl_qbe_save()
		#No:FUN-580031 --end--       HCN
   END CONSTRUCT
#ELSE                                       #MOD-4B0255  #FUN-7C0050
#   LET g_wc = " pmc01 ='",g_argv2,"'"      #MOD-4B0255  #FUN-7C0050
#END IF #MOD-4B0255(end)                                 #FUN-7C0050

   IF INT_FLAG THEN RETURN END IF
 END IF  #FUN-7C0050

   #資料權限的檢查
   IF g_priv2='4' THEN                           #只能使用自己的資料
      LET g_wc=g_wc clipped," AND pmcuser = '",g_user,"'"
   END IF
   IF g_priv3='4' THEN                           #只能使用相同群的資料
      LET g_wc=g_wc clipped," AND pmcgrup MATCHES '",g_grup CLIPPED,"*'"
   END IF

   IF g_priv3 MATCHES "[5678]" THEN    #TQC-5C0134群組權限
      LET g_wc=g_wc clipped," AND pmcgrup IN ",cl_chk_tgrup_list()
   END IF

  #IF NOT cl_null(g_argv1) THEN                             #FUN-7C0050
  #   LET g_wc=g_wc clipped," AND pmc14 = '",g_argv1,"'"    #FUN-7C0050
  #END IF                                                   #FUN-7C0050
   LET g_sql="SELECT ROWID,pmc01 FROM pmc_file ", # 組合出 SQL 指令
       " WHERE ",g_wc CLIPPED, " ORDER BY pmc01 "

  #IF g_aza.aza44 = "Y" THEN #FUN-590083  #TQC-6C0060 mark
  #   CALL cl_itemname_construct(g_sql,"pmc_file","pmc03","pmc01") RETURNING g_sql
  #END IF

   PREPARE i600_prepare FROM g_sql             # RUNTIME 編譯
   DECLARE i600_cs                           # SCROLL CURSOR
       SCROLL CURSOR WITH HOLD FOR i600_prepare
  #No.FUN-820034  --Begin
   DECLARE i600_list_cur CURSOR FOR i600_prepare
  #No.FUN-820034  --End
   LET g_sql =
       "SELECT COUNT(*) FROM pmc_file WHERE ",g_wc CLIPPED
   PREPARE i600_precount FROM g_sql
   DECLARE i600_count CURSOR FOR i600_precount
END FUNCTION

FUNCTION i600_menu()
   DEFINE   l_cmd     LIKE type_file.chr1000, #No.FUN-680136 VARCHAR(30)
#           l_priv1   VARCHAR(3000),
            l_priv1   LIKE zy_file.zy03,      # 使用者執行權限
            l_priv2   LIKE zy_file.zy04,      # 使用者資料權限
            l_priv3   LIKE zy_file.zy05       # 使用部門資料權限

   MENU ""

       BEFORE MENU
           CALL cl_navigator_setting( g_curs_index, g_row_count )

      ON ACTION insert
         LET g_action_choice="insert"
         #FUN-690021--------mod------
         IF g_aza.aza62 = 'N' THEN #不使用廠商申請作業時,才可按新增!
             IF cl_chk_act_auth() THEN    #cl_prichk('A') THEN
                  CALL i600_a()
             END IF
         ELSE
             CALL cl_err('','axm-231',1)
             #不使用廠商申請作業時,才可按新增!
         END IF
         #FUN-690021--------mod-end--
      ON ACTION query
         LET g_action_choice="query"
         IF cl_chk_act_auth() THEN
            CALL i600_q()
         END IF
      ON ACTION next
         CALL i600_fetch('N')
      ON ACTION previous
         CALL i600_fetch('P')
      ON ACTION modify
#        IF cl_prich3(g_pmc.pmcuser,g_pmc.pmcgrup,'U') THEN
         LET g_action_choice="modify"
         IF cl_chk_act_auth() THEN
            CALL i600_u()
         END IF
      ON ACTION invalid
#        IF cl_prich3(g_pmc.pmcuser,g_pmc.pmcgrup,'X') THEN
         LET g_action_choice="invalid"
         IF cl_chk_act_auth() THEN
            CALL i600_x()
         END IF
        #CALL cl_set_field_pic("","","","","",g_pmc.pmcacti) #FUN-690021 mark
      ON ACTION delete
#        IF cl_prich3(g_pmc.pmcuser,g_pmc.pmcgrup,'R') THEN
         LET g_action_choice="delete"
         IF cl_chk_act_auth() THEN
            CALL i600_r()
         END IF
      ON ACTION reproduce
         LET g_action_choice="reproduce"
         IF g_aza.aza62 = 'N' THEN  #CHI-740027 add if判斷
             IF cl_chk_act_auth() THEN
                CALL i600_copy()
             END IF
         #CHI-740027-----------add-----str---------
         ELSE
             #參數設定使用廠商申請作業時,不可做複製!
             CALL cl_err('','aim-155',1)
         END IF
         #CHI-740027-----------add-----end---------
      ON ACTION output
         LET g_action_choice="output"
         IF cl_chk_act_auth() THEN
            CALL i600_out()
         END IF
#     ON ACTION 廠商評鑑資料
      ON ACTION vender_evalu
         LET g_action_choice="vender_evalu"
         IF cl_chk_act_auth() THEN
            IF NOT cl_null(g_pmc.pmc01) THEN
               CALL sapmi601(g_pmc.pmc01)
            END IF
         END IF
#     ON ACTION 關係人資料
      ON ACTION affiliate
         LET g_action_choice="affiliate"
         IF cl_chk_act_auth() THEN
            IF NOT cl_null(g_pmc.pmc01) THEN
               CALL i600_2()
            END IF
         END IF
#     ON ACTION 往來銀行
      ON ACTION bank_list
         LET g_action_choice="bank_list"
         IF cl_chk_act_auth() THEN
            IF NOT cl_null(g_pmc.pmc01) THEN
               LET l_cmd = "apmi206 '",g_pmc.pmc01,"'" CLIPPED
               CALL cl_cmdrun(l_cmd)
            END IF
         END IF

      #No.FUN-820034  --Begin
#      ON ACTION 資料拋轉
       #ON ACTION carry_data
       #  LET g_action_choice="carry_data"
       #  IF cl_chk_act_auth() AND NOT cl_null(g_pmc.pmc01) THEN
       #     LET l_priv1 = g_priv1
       #     LET l_priv2 = g_priv2
       #     LET l_priv3 = g_priv3
       #     CALL i600_dbs()
       #     LET g_priv1 = l_priv1
       #     LET g_priv2 = l_priv2
       #     LET g_priv3 = l_priv3
       #  END IF
       #  CALL i600_show()

       ON ACTION  carry
          LET g_action_choice = "carry"
          IF cl_chk_act_auth() THEN
             CALL ui.Interface.refresh()
             CALL i600_carry()
             ERROR ""
          END IF

#      ON ACTION 資料下載
       ON ACTION download
          LET g_action_choice = "download"
          IF cl_chk_act_auth() THEN
             CALL i600_download()
          END IF

#      ON ACTION 資料拋轉歷史
       ON ACTION qry_carry_history
          LET g_action_choice = "qry_carry_history"
          IF cl_chk_act_auth() THEN
            IF NOT cl_null(g_pmc.pmc01) THEN        #NO.FUN-820028
             IF NOT cl_null(g_pmc.pmc1920) THEN       #資料來源
                SELECT gev04 INTO g_gev04 FROM gev_file
                 WHERE gev01 = '5' AND gev02 = g_pmc.pmc1920
             ELSE      #歷史資料,即沒有ima916的值
                SELECT gev04 INTO g_gev04 FROM gev_file
                 WHERE gev01 = '5' AND gev02 = g_plant
             END IF
             IF NOT cl_null(g_gev04) THEN
                LET l_cmd='aooq604 "',g_gev04,'" "5" "',g_prog,'" "',g_pmc.pmc01,'"'
                CALL cl_cmdrun(l_cmd)
             END IF
           ELSE
              CALL cl_err('',-400,0)
          END IF         #NO.FUN-820028
        END IF

#      ON ACTION 切換當前頁
       ON ACTION vendor_list
          #CALL i600_bp("G")          #MOD-A70076
          LET g_action_choice = ""    #MOD-A70076
          CALL i600_b_menu()          #MOD-A70076
          LET g_action_choice = ""    #MOD-A70076
     #No.FUN-820034 -- End

#     ON ACTION 重要備註
      ON ACTION key_memo
         LET g_action_choice="key_memo"
         IF cl_chk_act_auth() THEN
            IF NOT cl_null(g_pmc.pmc01) THEN
               LET l_cmd = "apmi202 '",g_pmc.pmc01,"'" CLIPPED
               CALL cl_cmdrun(l_cmd)
            END IF
         END IF
#     ON ACTION 聯絡資料
      ON ACTION contact
         LET g_action_choice="contact"
         IF cl_chk_act_auth() THEN
            IF NOT cl_null(g_pmc.pmc01) THEN
               LET l_cmd = "apmi201 '",g_pmc.pmc01,"'" CLIPPED
               CALL cl_cmdrun(l_cmd)
            END IF
         END IF
#     ON ACTION 相關查詢
      ON ACTION related_query
#genero --no s_pmcqry
         CALL s_pmcqry(g_pmc.pmc01)

      #FUN-690021---------------------------------add--------
        #確認
        ON ACTION confirm
           LET g_action_choice="confirm"
           IF cl_chk_act_auth() THEN
              CALL i600_confirm()
              CALL i600_show_pic()
           END IF

        #取消確認
        ON ACTION unconfirm
           LET g_action_choice="unconfirm"
           IF cl_chk_act_auth() THEN
              CALL i600_unconfirm()
              CALL i600_show_pic()
           END IF

        #留置
        ON ACTION hang
           LET g_action_choice="hang"
           IF cl_chk_act_auth() THEN
              CALL i600_hang()
              CALL i600_show_pic()
           END IF

        #取消留置
        ON ACTION unhang
           LET g_action_choice="unhang"
           IF cl_chk_act_auth() THEN
              CALL i600_unhang()
              CALL i600_show_pic()
           END IF

        #停止交易
        ON ACTION untransaction
           LET g_action_choice="untransaction"
           IF cl_chk_act_auth() THEN
              CALL i600_untransaction()
              CALL i600_show_pic()
           END IF

        #恢復交易
        ON ACTION transaction
           LET g_action_choice="transaction"
           IF cl_chk_act_auth() THEN
              CALL i600_transaction()
              CALL i600_show_pic()
           END IF
      #FUN-690021---------------------------------add-end----

#No.FUN-640011--end

      #FUN-6A0007...............begin
      ON ACTION abx_maintain
         LET g_action_choice="abx_maintain"
         IF cl_chk_act_auth() THEN
            CALL i600_abx()
         END IF
      #FUN-6A0007...............end

#FUN-7C0004 begin
      ON ACTION internal_trade_data
         LET g_action_choice = "internal_trade_data"
         IF cl_chk_act_auth() THEN
            CALL i600_i_t()
         END IF
#FUN-7C0004 end

      ON ACTION help
         CALL cl_show_help()

      ON ACTION locale
         CALL cl_dynamic_locale()
         CALL cl_show_fld_cont()                   #No:FUN-550037 hmf
         CALL cl_set_combo_lang("pmc911")           #MOD-970184 add
        #CALL cl_set_field_pic("","","","","",g_pmc.pmcacti)  #FUN-690021 mark
         CALL i600_show_pic()                                 #FUN-690021 mod
#        EXIT MENU

      ON ACTION exit
         LET g_action_choice = "exit"
         EXIT MENU
      COMMAND KEY('G')
         CALL i600_ins_apl()
      ON ACTION jump
         CALL i600_fetch('/')
      ON ACTION first
         CALL i600_fetch('F')
      ON ACTION last
         CALL i600_fetch('L')
      COMMAND KEY(CONTROL-G)
         CALL cl_cmdask()
      ON IDLE g_idle_seconds
           LET g_action_choice = "exit"
         CALL cl_on_idle()
         CONTINUE MENU

      ON ACTION about         #MOD-4C0121
         CALL cl_about()      #MOD-4C0121

      ON ACTION controlg      #MOD-4C0121
         CALL cl_cmdask()     #MOD-4C0121

      #No:FUN-6A0162-------add--------str----
      ON ACTION related_document       #相關文件
         LET g_action_choice="related_document"
         IF cl_chk_act_auth() THEN
             IF g_pmc.pmc01 IS NOT NULL THEN
                LET g_doc.column1 = "pmc01"
                LET g_doc.value1 = g_pmc.pmc01
                CALL cl_doc()
             END IF
         END IF
      #No:FUN-6A0162-------add--------end----
       -- for Windows close event trapped
       COMMAND KEY(INTERRUPT)
             LET INT_FLAG=FALSE 		#MOD-570244	mars
           LET g_action_choice = "exit"
           EXIT MENU

      #FUN-7C0050
      &include "qry_string.4gl"

   END MENU
   CLOSE i600_cs
END FUNCTION


FUNCTION i600_a()
   DEFINE   l_pmc22         LIKE aza_file.aza17

   IF s_shut(0) THEN RETURN END IF                #檢查權限
   MESSAGE ""
   CLEAR FORM                                  # 清螢墓欄位內容
   INITIALIZE g_pmc.* LIKE pmc_file.*
   LET g_wc = NULL
   LET g_pmc01_t = NULL
   LET g_pmc24_t = NULL
   LET g_pmc_t.* = g_pmc.*			# 保留舊值
   LET g_pmc_o.* = g_pmc.*		  	# 保留舊值
   LET g_pmc.pmc05 = '0'		  	# 目前狀況 #0:開立#FUN-690021
   LET g_pmc.pmc14 = g_argv1			# 資料性質
   IF cl_null(g_pmc.pmc14) THEN LET g_pmc.pmc14 = '1' END IF
   LET g_pmc.pmc22 = g_aza.aza17   # 幣別
   LET g_pmc.pmc23 = 'Y'           # 列印預設
   LET g_pmc.pmc27 = '1'           # 寄領方式
   LET g_pmc.pmc30 = '3'           # 廠商性質預設為兩者
   LET g_pmc.pmc45 =  0  		    # AP AMT
   LET g_pmc.pmc46 =  0  		    # AP AMT
   LET g_pmc.pmc48 =  'Y'   	    # 禁止背書
   LET g_pmc.pmc912 = 'N'   	    # 不發給廠商
   LET g_pmc.pmc902 = '0'
   LET g_pmc.pmc903 = 'N'
   LET g_pmc.pmc911 = g_lang
   LET g_pmc.pmc1920 = g_plant      #No.FUN-820034
   LET g_pmc.pmc913 = 'N'           #No.FUN-880094
   CALL cl_opmsg('a')
   WHILE TRUE
      CALL cl_show_fld_cont()       #TQC-640097
     #LET g_pmc.pmcacti = 'Y' # 有效的資料  #FUN-690021 mark
      LET g_pmc.pmcacti = 'P' #P:Processing #FUN-690021 mod
      LET g_pmc.pmcuser = g_user		# 使用者
      LET g_pmc.pmcgrup = g_grup              # 使用者所屬群
      LET g_pmc.pmcdate = g_today		# 更改日期
      #No:A086
      IF g_aza.aza30 = 'Y' THEN
         CALL s_auno(g_pmc.pmc01,'3','') RETURNING g_pmc.pmc01,g_pmc.pmc03  #No:FUN-850100
      END IF
      #end
      CALL i600_i("a")                     # 各欄位輸入
      IF INT_FLAG THEN                        # 若按了DEL鍵
         INITIALIZE g_pmc.* TO NULL
         LET INT_FLAG = 0
         CALL cl_err('',9001,0)
         CLEAR FORM
         EXIT WHILE
      END IF
      IF g_pmc.pmc01 IS NULL THEN              # KEY 不可空白
         CONTINUE WHILE
      END IF
      #FUN-590083  #TQC-6C0060 mark
     #IF g_aza.aza44 = "Y" THEN
     #   CALL cl_itemname_switch(1,"pmc_file","pmc03",g_pmc.pmc01,g_pmc.pmc03) RETURNING g_pmc.pmc03
     #END IF

      BEGIN WORK     #NO:FUN-680010

      INSERT INTO pmc_file VALUES(g_pmc.*)     # DISK WRITE
      IF SQLCA.sqlcode THEN
#        CALL cl_err(g_pmc.pmc01,SQLCA.sqlcode,0)   #No.FUN-660129
         CALL cl_err3("ins","pmc_file",g_pmc.pmc01,"",SQLCA.sqlcode,"","",1)  #No.FUN-660129
         ROLLBACK WORK    #FUN-680010
         CONTINUE WHILE
      ELSE
        #IF g_aza.aza44 = "Y" THEN #FUN-590083  #TQC-6C0060 mark
        #   CALL cl_itemname_switch(2,"pmc_file","pmc03",g_pmc.pmc01,g_pmc.pmc03) RETURNING g_pmc.pmc03
        #END IF
         LET g_pmc_t.* = g_pmc.*              # 保存上筆資料
         SELECT ROWID INTO g_pmc_rowid FROM pmc_file
          WHERE pmc01 = g_pmc.pmc01
      END IF

      IF g_pmc.pmc24 IS NOT NULL THEN
         DELETE FROM apl_file WHERE apl01 = g_pmc.pmc24                    #MOD-4B0007
         ##FUN-680010
         IF SQLCA.sqlcode THEN
            CALL cl_err3("del","apl_file",g_pmc.pmc24,"",SQLCA.sqlcode,"","",1)  #No.FUN-660129
            ROLLBACK WORK
            CONTINUE WHILE
         END IF
         ##FUN-680010
         INSERT INTO apl_file(apl01,apl02,apl021,apl03)                    #MOD-4B0007
                VALUES(g_pmc.pmc24,g_pmc.pmc081,g_pmc.pmc082,g_pmc.pmc091) #MOD-4B0007
         ##FUN-680010
         IF SQLCA.sqlcode THEN
            CALL cl_err3("ins","apl_file",g_pmc.pmc24,"",SQLCA.sqlcode,"","",1)  #No.FUN-660129
            ROLLBACK WORK
            CONTINUE WHILE
         END IF
         ##FUN-680010
      END IF

      #FUN-860036
      #CASE aws_mdmcli('vendor','insert',base.TypeInfo.create(g_pmc),'','','','') #FUN-870166
      CASE aws_mdmdata('pmc_file','insert',g_pmc.pmc01,base.TypeInfo.create(g_pmc),'CreateVendorData') #FUN-870166
         WHEN 0  #無與 MDM 整合
              CALL cl_msg('INSERT O.K')
         WHEN 1  #呼叫 MDM 成功
              CALL cl_msg('INSERT O.K, INSERT MDM O.K')
         WHEN 2  #呼叫 MDM 失敗
              ROLLBACK WORK
              CONTINUE WHILE
      END CASE

      ##FUN-680010
      # CALL aws_spccli_base()
      # 傳入參數: (1)TABLE名稱, (2)新增資料,
      #           (3)功能選項：insert(新增),update(修改),delete(刪除)
      CASE aws_spccli_base('pmc_file',base.TypeInfo.create(g_pmc),'insert')
         WHEN 0  #無與 SPC 整合
              MESSAGE 'INSERT O.K'
              COMMIT WORK
         WHEN 1  #呼叫 SPC 成功
              MESSAGE 'INSERT O.K, INSERT SPC O.K'
              COMMIT WORK
         WHEN 2  #呼叫 SPC 失敗
              ROLLBACK WORK
              CONTINUE WHILE
      END CASE
      ##FUN-680010

      EXIT WHILE
   END WHILE
END FUNCTION

FUNCTION i600_i(p_cmd)
   DEFINE
       p_cmd           LIKE type_file.chr1,  		 #狀態  #No.FUN-680136 VARCHAR(1)
       l_flag          LIKE type_file.chr1,  		 #是否必要欄位有輸入  #No.FUN-680136 VARCHAR(1)
       l_cmd           LIKE type_file.chr1000,   #No.FUN-680136 VARCHAR(30)
       g_msg           LIKE ze_file.ze03,        #No.FUN-680136 VARCHAR(80)
       l_msg           LIKE ze_file.ze03,        #No.FUN-680136 VARCHAR(80)
       l_pmc03_d       LIKE pmc_file.pmc03,      #No.FUN-680136 VARCHAR(10)
       l_pmc22         LIKE aza_file.aza17,	 #幣別
       l_pmc03         LIKE pmc_file.pmc03,	 #簡稱
       l_pmc06         LIKE pmc_file.pmc06,	 #區域代號
       x1,x2	       LIKE pmc_file.pmc01,      #No.FUN-680136 VARCHAR(10)
       l_n,l_cnt       LIKE type_file.num5,    #No.FUN-680136 SMALLINT
       l_str           STRING           #No.MOD-580323
   DEFINE l_pmc24       STRING                  #MOD-790131
   DEFINE li_result       LIKE type_file.num5              #No:FUN-620063  #No.FUN-680136 SMALLINT
    # modify 02/12/06 NO.A045
   LET g_on_change = TRUE   #FUN-590083
   DISPLAY BY NAME g_pmc.pmc1920  #No.FUN-820034
   INPUT BY NAME
      g_pmc.pmc01, g_pmc.pmc03,
      g_pmc.pmc081, g_pmc.pmc082,
      g_pmc.pmc24, g_pmc.pmc903,
      g_pmc.pmc14, g_pmc.pmc05, g_pmc.pmc02,
      g_pmc.pmc30, g_pmc.pmc04, g_pmc.pmc901,
      g_pmc.pmc17, g_pmc.pmc49, g_pmc.pmc22 ,
      g_pmc.pmc47, g_pmc.pmc54,  g_pmc.pmc911,
      g_pmc.pmc48, g_pmc.pmc902,g_pmc.pmc27 ,
      #g_pmc.pmc50, g_pmc.pmc51,  g_pmc.pmc28, g_pmc.pmc912,  #FUN-660067 add pmc912
      g_pmc.pmc50, g_pmc.pmc51,  g_pmc.pmc28, g_pmc.pmc281,g_pmc.pmc912,  #FUN-660067 add pmc912  #NO.FUN-870037 add pmc281
      g_pmc.pmc913,   #No:FUN-880094 add
      #g_pmc.pmc06, g_pmc.pmc07, g_pmc.pmc904,    #FUN-550091
      g_pmc.pmc908, g_pmc.pmc07, g_pmc.pmc06, g_pmc.pmc904,    #FUN-550091
      g_pmc.pmc091, g_pmc.pmc092, g_pmc.pmc093,
      g_pmc.pmc094, g_pmc.pmc095,
      g_pmc.pmc52,  g_pmc.pmc53,
      g_pmc.pmc15, g_pmc.pmc16,
      g_pmc.pmc56, g_pmc.pmc55, g_pmc.pmc57, g_pmc.pmc10,      #FUN-960022 ADD pmc57
      g_pmc.pmc11, g_pmc.pmc12,
      #No:FUN-620063 --start--
      g_pmc.pmcud01,g_pmc.pmcud02,g_pmc.pmcud03,g_pmc.pmcud04,g_pmc.pmcud05,
      g_pmc.pmcud06,g_pmc.pmcud07,g_pmc.pmcud08,g_pmc.pmcud09,g_pmc.pmcud10,
      g_pmc.pmcud11,g_pmc.pmcud12,g_pmc.pmcud13,g_pmc.pmcud14,g_pmc.pmcud15,
      #No:FUN-620063 ---end---
      g_pmc.pmcuser,g_pmc.pmcgrup,g_pmc.pmcmodu,g_pmc.pmcdate,g_pmc.pmcacti
      WITHOUT DEFAULTS

      BEFORE INPUT
          LET g_before_input_done = FALSE
          CALL i600_set_entry(p_cmd)
          CALL i600_set_no_entry(p_cmd)
          LET g_before_input_done = TRUE

      #BEFORE FIELD pmc01    #判斷是否可更改KEY值
         #CALL s_kindes(g_pmc.pmc30) RETURNING l_msg
         #DISPLAY l_msg TO FORMONLY.desc2
         #CALL s_datype(g_pmc.pmc14) RETURNING l_msg
         #DISPLAY l_msg TO FORMONLY.desc3

      #No.FUN-A30110  --Begin                                                 
      BEFORE FIELD pmc01                                                      
         CALL i600_set_entry(p_cmd)                                          
      #No.FUN-A30110  --End

      AFTER FIELD pmc01
         IF p_cmd = "a" OR                    # 若輸入或更改且改KEY
           (p_cmd = "u" AND g_pmc.pmc01 != g_pmc01_t) THEN
            SELECT COUNT(*) INTO l_n FROM pmc_file      --> FOR pmc_file
             WHERE pmc01 = g_pmc.pmc01
            IF l_n > 0 THEN                  # Duplicated
               CALL cl_err(g_pmc.pmc01,'apm-036',0)   #No:MOD-570066
               LET g_pmc.pmc01 = g_pmc01_t
               DISPLAY BY NAME g_pmc.pmc01
               NEXT FIELD pmc01
            ELSE
              #No.FUN-820034  --Begin
              #check pmc01 value by aooi601 setting
               CALL s_field_chk(g_pmc.pmc01,'5',g_plant,'pmc01') RETURNING g_flag2
               IF g_flag2 = '0' THEN
                  CALL cl_err(g_pmc.pmc01,'aoo-043',1)
                  LET g_pmc.pmc01 = g_pmc_t.pmc01
                  DISPLAY BY NAME g_pmc.pmc01
                  NEXT FIELD pmc01
               ELSE
              #No.FUN-820034  --End
                  IF g_pmc.pmc30='3' THEN
                     LET g_pmc.pmc04=g_pmc.pmc01
                    #TQC-640098 --begin
                     DISPLAY g_pmc.pmc03 TO pmc03_d
                    #TQC-640098 --end
                     LET g_pmc.pmc901=g_pmc.pmc01   #no.5138
                    #TQC-640098 --begin
                     DISPLAY g_pmc.pmc03 TO pmc03_e
                    #TQC-640098 --end
                     DISPLAY BY NAME g_pmc.pmc04,g_pmc.pmc901
                  END IF
               END IF                          #No.FUN-820034
            END IF
         END IF
         IF g_argv1='2' AND g_pmc.pmc24 IS NULL THEN
            LET g_pmc.pmc24=g_pmc.pmc01
            DISPLAY BY NAME g_pmc.pmc24
         END IF
         #No.FUN-A30110  --Begin
         IF p_cmd = 'a' THEN                                              
            CALL i600_set_pmc03(p_cmd)                                    
         END IF
         CALL s_check_pmc01_occ01(g_pmc.pmc01,g_pmc.pmc03,g_dbs,'1','Y')
              RETURNING g_flag,g_flag1
         IF g_flag = FALSE THEN
#           NEXT FIELD pmc01
         END IF
         CALL i600_set_no_entry(p_cmd)
         #No.FUN-A30110  --End

      AFTER FIELD pmc03
         IF NOT cl_null(g_pmc.pmc03) THEN
            LET l_n =0
            SELECT count(*) INTO l_n FROM pmc_file
             WHERE pmc03 = g_pmc.pmc03 AND pmc01 != g_pmc.pmc01
             IF l_n > 0 THEN CALL cl_err('','apm-035',0) END IF   #No:MOD-570066
            IF cl_null(g_pmc.pmc081)  THEN
               LET g_pmc.pmc081=g_pmc.pmc03
               DISPLAY BY NAME g_pmc.pmc081
            END IF
            #No.FUN-A30110  --Begin
            CALL s_check_pmc01_occ01(g_pmc.pmc01,g_pmc.pmc03,g_dbs,'1','Y')
                 RETURNING g_flag,g_flag1
            IF g_flag = FALSE THEN
               LET g_pmc.pmc03 = g_pmc_t.pmc03
               DISPLAY BY NAME g_pmc.pmc03
               NEXT FIELD pmc03
            END IF
            #No.FUN-A30110  --End
         END IF

       AFTER FIELD pmc908                       #查詢地區
          IF NOT cl_null(g_pmc.pmc908)  THEN
             IF cl_null(g_pmc_o.pmc908) OR cl_null(g_pmc_t.pmc908)   #MOD-860269 取消原本mark
                OR (g_pmc.pmc908 != g_pmc_o.pmc908) THEN   #MOD-860269 取消原本mark
       	       	CALL i600_pmc908('a')
                IF NOT cl_null(g_errno) THEN
                   CALL cl_err(g_pmc.pmc908,g_errno,0)
                   LET g_pmc.pmc908 = g_pmc_o.pmc908
                   DISPLAY BY NAME g_pmc.pmc908
                   DISPLAY ' ' TO pmc07
                   DISPLAY ' ' TO pmc06
                   DISPLAY ' ' TO geb02
                   DISPLAY ' ' TO gea02
                   NEXT FIELD pmc908
                END IF
             END IF   #MOD-860269 取消原本mark
         #MOD-680067-begin-add
          ELSE
             DISPLAY '' TO geo02
             LET g_pmc.pmc06 = ' '
             LET g_pmc.pmc07 = ' '
             DISPLAY BY NAME g_pmc.pmc07
             DISPLAY '' TO geb02
             DISPLAY BY NAME g_pmc.pmc06
             DISPLAY '' TO gea02
         #MOD-680067-end-add
          END IF
          LET g_pmc_o.pmc908 = g_pmc.pmc908

       #-----MOD-860269--------- 取消原本mark
       AFTER FIELD pmc07                       #查詢國別
          IF NOT cl_null(g_pmc.pmc07)  THEN
             IF cl_null(g_pmc_o.pmc07) OR cl_null(g_pmc_t.pmc07)
                OR (g_pmc.pmc07 != g_pmc_o.pmc07) THEN
       	       	CALL i600_pmc07('a')
                IF NOT cl_null(g_errno) THEN
                   CALL cl_err(g_pmc.pmc07,g_errno,0)
                   LET g_pmc.pmc07 = g_pmc_o.pmc07
                   DISPLAY BY NAME g_pmc.pmc07
                   DISPLAY ' ' TO pmc06
                   DISPLAY ' ' TO gea02
                   DISPLAY ' ' TO geb02
                    CALL i600_pmc07('a') #MOD-550023
                   NEXT FIELD pmc07
                END IF
             END IF
          END IF
          LET g_pmc_o.pmc07 = g_pmc.pmc07
       #-----END MOD-860269----- 取消原本mark

       #-----MOD-860269---------
        AFTER FIELD pmc06                       #查詢區域
           IF NOT cl_null(g_pmc.pmc06)  THEN
              IF cl_null(g_pmc_o.pmc06) OR cl_null(g_pmc_t.pmc06)
                 OR (g_pmc.pmc06 != g_pmc_o.pmc06) THEN
        	       	CALL i600_pmc06('a')
                 IF NOT cl_null(g_errno) THEN
                    CALL cl_err(g_pmc.pmc06,g_errno,0)
                    LET g_pmc.pmc06 = g_pmc_o.pmc06
                    DISPLAY BY NAME g_pmc.pmc06
                    DISPLAY ' ' TO pmc06
                    DISPLAY ' ' TO gea02
                    DISPLAY ' ' TO geb02
                    CALL i600_pmc06('a')
                    NEXT FIELD pmc06
                 END IF
              END IF
           END IF
           LET g_pmc_o.pmc06 = g_pmc.pmc06
       #-----END MOD-860269-----

      BEFORE FIELD pmc05
         DISPLAY BY NAME g_pmc.pmc05

      AFTER FIELD pmc05                       #目前狀況
         IF g_pmc.pmc05 IS NULL THEN
            CALL cl_err(g_pmc.pmc05,'mfg3284',0)
            LET g_pmc.pmc05=g_pmc_o.pmc05
            DISPLAY BY NAME g_pmc.pmc05
            NEXT FIELD pmc05
         END IF
         IF g_pmc_o.pmc05 != g_pmc.pmc05 THEN
            CALL i600_pmc05()
         END IF
         LET g_pmc_o.pmc05 = g_pmc.pmc05

      BEFORE FIELD pmc14
         CALL i600_set_entry(p_cmd)

      AFTER FIELD pmc14                       #資料性質
        # modify 02/12/06 NO.A045
        # CALL s_datype(g_pmc.pmc14) RETURNING l_msg
        # DISPLAY l_msg TO FORMONLY.desc3
        #No.FUN-820034  --Begin
        #check pmc01 value by aooi601 setting
         CALL s_field_chk(g_pmc.pmc14,'5',g_plant,'pmc14') RETURNING g_flag2
         IF g_flag2 = '0' THEN
            CALL cl_err(g_pmc.pmc14,'aoo-043',1)
            LET g_pmc.pmc14 = g_pmc_t.pmc14
            DISPLAY BY NAME g_pmc.pmc14
            NEXT FIELD pmc14
         END IF
        #No.FUN-820034  --End
         CALL i600_set_no_entry(p_cmd)

      BEFORE FIELD pmc30
         CALL i600_set_entry(p_cmd)

      AFTER FIELD pmc30                       #廠商性質
         #CALL s_kindes(g_pmc.pmc30) RETURNING l_msg
         #DISPLAY l_msg TO FORMONLY.desc2
         #MOD-530432 改成下段
        #CASE g_pmc.pmc30  #no.5138
        #   WHEN '1' LET g_pmc.pmc901=g_pmc.pmc01
        #            DISPLAY BY NAME g_pmc.pmc901
        #   WHEN '2' LET g_pmc.pmc04=g_pmc.pmc01
        #            DISPLAY BY NAME g_pmc.pmc04
        #   WHEN '3' LET g_pmc.pmc04=g_pmc.pmc01
        #            LET g_pmc.pmc901=g_pmc.pmc01
        #            DISPLAY BY NAME g_pmc.pmc04,g_pmc.pmc901
        #END CASE
          #MOD-530432(加包CASE)
         CASE g_pmc.pmc30
            WHEN '1'
                 IF g_pmc.pmc04 = g_pmc.pmc01 THEN
                     LET g_pmc.pmc04=NULL        #付款廠商編號
                 END IF
                 LET g_pmc.pmc901=g_pmc.pmc01#出貨廠商
            WHEN '2'
                 LET g_pmc.pmc04=g_pmc.pmc01 #付款廠商編號
                 IF g_pmc.pmc901 = g_pmc.pmc01 THEN
                     LET g_pmc.pmc901=NULL       #出貨廠商
                 END IF
            WHEN '3'
                 LET g_pmc.pmc04=g_pmc.pmc01 #付款廠商編號
                 LET g_pmc.pmc901=g_pmc.pmc01#出貨廠商
         END CASE
         DISPLAY BY NAME g_pmc.pmc04,g_pmc.pmc901
          #MOD-530432(end)
         LET g_pmc_o.pmc30 = g_pmc.pmc30
         CALL i600_set_no_entry(p_cmd)

      AFTER FIELD pmc04                	#付款廠商
         #IF (g_pmc_o.pmc04 IS NULL) OR (g_pmc.pmc04 != g_pmc_o.pmc04) THEN #MOD-530432 MARK
          IF NOT cl_null(g_pmc.pmc04) THEN #MOD-530432 MARK
             #MOD-530432
            IF g_pmc.pmc04 = g_pmc.pmc901 THEN
               CALL cl_err(g_pmc.pmc04,'apm-033',0) #付款廠商和出貨廠商不可相同
               LET g_pmc.pmc04 = g_pmc_o.pmc04
               DISPLAY BY NAME g_pmc.pmc04
               NEXT FIELD pmc04
            END IF
             #MOD-530432(end)
            CALL i600_pmc04('a')
            IF NOT cl_null(g_errno) THEN
               CALL cl_err(g_pmc.pmc04,g_errno,0)
               LET g_pmc.pmc04 = g_pmc_o.pmc04
               DISPLAY BY NAME g_pmc.pmc04
                CALL i600_pmc04('a') #MOD-550023
               NEXT FIELD pmc04
            END IF
         END IF
         SELECT pmc03 INTO l_pmc03_d FROM pmc_file WHERE pmc01 = g_pmc.pmc04
         DISPLAY l_pmc03_d TO pmc03_d
         LET g_pmc_o.pmc04 = g_pmc.pmc04
      #MOD-530432 MARK
     #BEFORE FIELD pmc901   #出貨廠商
     #   IF cl_null(g_pmc.pmc901) THEN
     #      LET g_pmc.pmc901 = g_pmc.pmc01
     #      DISPLAY BY NAME g_pmc.pmc901
     #   END IF

      AFTER FIELD pmc901   #出貨廠商
         #IF (g_pmc_o.pmc901 IS NULL) OR (g_pmc.pmc901 != g_pmc_o.pmc901) THEN #MOD-530531
         IF NOT cl_null(g_pmc.pmc901) THEN #MOD-530531
             #MOD-530432
            IF g_pmc.pmc04 = g_pmc.pmc901 THEN
               CALL cl_err(g_pmc.pmc901,'apm-033',0) #付款廠商和出貨廠商不可相同
               LET g_pmc.pmc901 = g_pmc_o.pmc901
               DISPLAY BY NAME g_pmc.pmc901
               NEXT FIELD pmc901
            END IF
             #MOD-530432(end)
            CALL i600_pmc901('a')
            IF NOT cl_null(g_errno) THEN
               CALL cl_err(g_pmc.pmc901,g_errno,0)
               LET g_pmc.pmc901 = g_pmc_o.pmc901
               DISPLAY BY NAME g_pmc.pmc901
                CALL i600_pmc901('a') #MOD-550023
               NEXT FIELD pmc901
            END IF
         END IF

      AFTER FIELD pmc24
         #--------------------------------------- 統編不可重複 (970710 roger)
         IF NOT cl_null(g_pmc.pmc24) THEN
            IF g_pmc_t.pmc24 IS NULL OR g_pmc_t.pmc24 <> g_pmc.pmc24 THEN
               LET x1=NULL
#              SELECT MAX(pmc01),MAX(pmc03) INTO x1,x2 FROM pmc_file
               SELECT MAX(pmc01) INTO x1 FROM pmc_file
                      WHERE pmc24=g_pmc.pmc24 AND pmc01<>g_pmc.pmc01
#              CASE WHEN SQLCA.SQLCODE=0
               CASE WHEN x1 IS NOT NULL
#No.MOD-580323 --start--
                         CALL cl_getmsg('apm-600',g_lang) RETURNING l_str
                         ERROR l_str,x1,x2
#                        ERROR "該統一編號的廠商資料已存在,廠商編號:",x1,x2
#No.MOD-580323 --end--
                         NEXT FIELD pmc24
                    WHEN SQLCA.SQLCODE=100
                    WHEN SQLCA.SQLCODE=0
                    OTHERWISE
                         CALL cl_err('sel pmc24:',SQLCA.SQLCODE,0)
                         NEXT FIELD pmc24
               END CASE
            END IF
         #-------------------------------------------------------
            IF g_pmc.pmc01!='EMPL' AND g_pmc.pmc01!='MISC' THEN    #85-09-23
               IF g_aza.aza21 = 'Y' AND g_aza.aza26='0' THEN  #MOD-790131 modify aza26=0
                    LET l_pmc24= g_pmc.pmc24 CLIPPED          #MOD-790131 #MOD-810038 mdoify
                  IF NOT s_chkban(g_pmc.pmc24) OR NOT cl_numchk(g_pmc.pmc24,8)
                     OR l_pmc24.getLength() > 8 THEN  #MOD-790931 modify 長度不可>8
                     CALL cl_err(g_pmc.pmc24,'aoo-080',0) NEXT FIELD pmc24
                  END IF
               END IF
            END IF
         END IF
         LET g_pmc_o.pmc24 = g_pmc.pmc24

      AFTER FIELD pmc091
         IF cl_null(g_pmc.pmc52) THEN LET g_pmc.pmc52 = g_pmc.pmc091 END IF
         IF cl_null(g_pmc.pmc53) THEN LET g_pmc.pmc53 = g_pmc.pmc091 END IF

      AFTER FIELD pmc22  		        #幣別
         IF NOT cl_null(g_pmc.pmc22) THEN
            IF cl_null(g_pmc_o.pmc22) OR cl_null(g_pmc_t.pmc22)
               OR  (g_pmc.pmc22 != g_pmc_o.pmc22 OR g_pmc.pmc22 = ' ' ) THEN
               CALL i600_pmc22(g_pmc.pmc22)
               IF NOT cl_null(g_errno) THEN
                  CALL cl_err(g_pmc.pmc22,g_errno,0)
                  LET g_pmc.pmc22 = g_pmc_o.pmc22
                  DISPLAY BY NAME g_pmc.pmc22
                   CALL i600_pmc22(g_pmc.pmc22) #MOD-550023
                  NEXT FIELD pmc22
               END IF
            END IF
          END IF
          LET g_pmc_o.pmc22 = g_pmc.pmc22

      AFTER FIELD pmc47  		        #稅別
         IF NOT cl_null(g_pmc.pmc47) THEN
            IF cl_null(g_pmc_o.pmc47) OR cl_null(g_pmc_t.pmc47)
               OR  (g_pmc.pmc47 != g_pmc_o.pmc47 OR g_pmc.pmc47 = ' ' ) THEN
               CALL i600_pmc47('d')
               IF NOT cl_null(g_errno) THEN
                  CALL cl_err(g_pmc.pmc47,g_errno,0)
                  LET g_pmc.pmc47 = g_pmc_o.pmc47
                  DISPLAY BY NAME g_pmc.pmc47
                   CALL i600_pmc47('d') #MOD-550023
                  NEXT FIELD pmc47
               END IF
            END IF
          END IF
          LET g_pmc_o.pmc47 = g_pmc.pmc47

      #add 02/12/06 NO.A045
      AFTER FIELD pmc54
         IF NOT cl_null(g_pmc.pmc54) THEN
            SELECT ofs01 FROM ofs_file WHERE ofs01=g_pmc.pmc54
            IF STATUS THEN
#              CALL cl_err(g_pmc.pmc54,'axm-461',0)  #No.FUN-660129
               CALL cl_err3("sel","ofs_file",g_pmc.pmc54,"","axm-461","","",1) NEXT FIELD pmc54   #No.FUN-660129
            END IF
         END IF

      AFTER FIELD pmc02 #廠商分類代碼
         IF NOT cl_null(g_pmc.pmc02) THEN
            CALL i600_pmc02('a')
            IF NOT cl_null(g_errno) THEN
                CALL cl_err(g_pmc.pmc02,g_errno,0)
                LET g_pmc.pmc02 = g_pmc_t.pmc02
                DISPLAY BY NAME g_pmc.pmc02
                 CALL i600_pmc02('a') #MOD-550023
                NEXT FIELD pmc02
            END IF
         END IF

      #TQC-640098 --begin
      AFTER FIELD pmc50
         IF NOT cl_null(g_pmc.pmc50) THEN
            IF g_pmc.pmc50>31 THEN
               CALL cl_err(g_pmc.pmc50,'apm-886',0)
               NEXT FIELD pmc50
            END IF
         END IF

      AFTER FIELD pmc51
         IF NOT cl_null(g_pmc.pmc51) THEN
            IF g_pmc.pmc51>31 THEN
               CALL cl_err(g_pmc.pmc51,'apm-886',0)
               NEXT FIELD pmc51
            END IF
         END IF
      #TQC-640098 --end

      AFTER FIELD pmc15  		        #送貨地址
         IF NOT cl_null(g_pmc.pmc15) THEN
      #     IF g_pmc.pmc15 != g_pmc_o.pmc15 THEN
               CALL i600_area(g_pmc.pmc15,'0')
               IF NOT cl_null(g_errno) THEN
                  CALL cl_err(g_pmc.pmc15,g_errno,0)
                  LET g_pmc.pmc15 = g_pmc_o.pmc15
                  DISPLAY BY NAME g_pmc.pmc15
                  NEXT FIELD pmc15
               END IF
       #    END IF
         END IF
         LET g_pmc_o.pmc15 = g_pmc.pmc15

      AFTER FIELD pmc16  		        #帳單地址
         IF NOT cl_null(g_pmc.pmc16) THEN
         #  IF g_pmc.pmc16 != g_pmc_o.pmc16 THEN
               CALL i600_area(g_pmc.pmc16,'1')
               IF NOT cl_null(g_errno) THEN
                  CALL cl_err(g_pmc.pmc16,g_errno,0)
                  LET g_pmc.pmc16 = g_pmc_o.pmc16
                  DISPLAY BY NAME g_pmc.pmc16
                  NEXT FIELD pmc16
               END IF
         #  END IF
         END IF
         LET g_pmc_o.pmc16 = g_pmc.pmc16

      AFTER FIELD pmc49      #價格條件 97-06-18
         IF NOT cl_null(g_pmc.pmc49) THEN
            SELECT oah02 INTO l_buf FROM oah_file WHERE oah01=g_pmc.pmc49
            IF STATUS THEN
#              CALL cl_err('sel oah:',STATUS,0) #No.FUN-660129
               CALL cl_err3("sel","oah_file",g_pmc.pmc49,"",STATUS,"sel oah:","",1)  NEXT FIELD pmc49   #No.FUN-660129
            END IF
            DISPLAY l_buf TO FORMONLY.oah02
         END IF

      AFTER FIELD pmc27
## No:2731 modify 1998/11/06 ----------------------------
         IF cl_null(g_pmc.pmc28) OR g_pmc.pmc28<=0 AND g_pmc.pmc27='1' THEN #寄出
           #LET g_pmc.pmc28=20
             LET g_pmc.pmc28=0 #MOD-530714
            DISPLAY BY NAME g_pmc.pmc28
         END IF

      AFTER FIELD pmc55   #匯款銀行
          IF NOT cl_null(g_pmc.pmc55) THEN
             SELECT nmt01 FROM nmt_file WHERE nmt01 = g_pmc.pmc55
             IF SQLCA.sqlcode THEN
#               CALL cl_err(g_pmc.pmc55,'apm-227',0)   #No.FUN-660129
                CALL cl_err3("sel","nmt_file",g_pmc.pmc55,"","apm-227","","",1)  #No.FUN-660129
                NEXT FIELD pmc55
             END IF
          END IF

      AFTER FIELD pmc17                       #付款條件
         IF NOT cl_null(g_pmc.pmc17) THEN
          # IF (g_pmc_o.pmc17 IS NULL) OR (g_pmc.pmc17 != g_pmc_o.pmc17) THEN
               CALL i600_pmc17(g_pmc.pmc17)
               IF NOT cl_null(g_errno) THEN
                  CALL cl_err(g_pmc.pmc17,g_errno,0)
                  LET g_pmc.pmc17 = g_pmc_o.pmc17
                  DISPLAY BY NAME g_pmc.pmc17
                   CALL i600_pmc17(g_pmc.pmc17) #MOD-550023
                  NEXT FIELD pmc17
               END IF
        #   END IF
            LET g_pmc_o.pmc17 = g_pmc.pmc17
         END IF

      #--NO.FUN-870037 start---
      BEFORE FIELD pmc28
         CALL i600_set_entry(p_cmd)
      #--NO.FUN-870037 end-----

      AFTER FIELD pmc28
         IF NOT cl_null(g_pmc.pmc28) THEN
            IF g_pmc.pmc28 < 0 THEN NEXT FIELD pmc28 END IF
         END IF
         #---NO.FUN-870037 start---
         #IF g_pmc.pmc28 = 0 THEN    #MOD-940422
         IF g_pmc.pmc28 = 0 OR cl_null(g_pmc.pmc28) THEN    #MOD-940422
             LET g_pmc.pmc281 = NULL
             DISPLAY BY NAME g_pmc.pmc281
         END IF
         CALL i600_set_no_entry(p_cmd)
         #---NO.FUN-870037 end----

      #No:FUN-620063 --start--  #No:FUN-7B0080 --start-- 整段修改
      AFTER FIELD pmcud01
         IF NOT cl_validate() THEN NEXT FIELD CURRENT END IF
      AFTER FIELD pmcud02
         IF NOT cl_validate() THEN NEXT FIELD CURRENT END IF
      AFTER FIELD pmcud03
         IF NOT cl_validate() THEN NEXT FIELD CURRENT END IF
      AFTER FIELD pmcud04
         IF NOT cl_validate() THEN NEXT FIELD CURRENT END IF
      AFTER FIELD pmcud05
         IF NOT cl_validate() THEN NEXT FIELD CURRENT END IF
      AFTER FIELD pmcud06
         IF NOT cl_validate() THEN NEXT FIELD CURRENT END IF
      AFTER FIELD pmcud07
         IF NOT cl_validate() THEN NEXT FIELD CURRENT END IF
      AFTER FIELD pmcud08
         IF NOT cl_validate() THEN NEXT FIELD CURRENT END IF
      AFTER FIELD pmcud09
         IF NOT cl_validate() THEN NEXT FIELD CURRENT END IF
      AFTER FIELD pmcud10
         IF NOT cl_validate() THEN NEXT FIELD CURRENT END IF
      AFTER FIELD pmcud11
         IF NOT cl_validate() THEN NEXT FIELD CURRENT END IF
      AFTER FIELD pmcud12
         IF NOT cl_validate() THEN NEXT FIELD CURRENT END IF
      AFTER FIELD pmcud13
         IF NOT cl_validate() THEN NEXT FIELD CURRENT END IF
      AFTER FIELD pmcud14
         IF NOT cl_validate() THEN NEXT FIELD CURRENT END IF
      AFTER FIELD pmcud15
         IF NOT cl_validate() THEN NEXT FIELD CURRENT END IF
      #No:FUN-620063 ---end---  #No:FUN-7B0080 ---end---

      AFTER INPUT  #判斷必要欄位之值是否有值,若無則反白顯示,並要求重新輸入
         IF INT_FLAG THEN EXIT INPUT  END IF
         IF g_pmc.pmc05 NOT MATCHES '[012]' THEN
            DISPLAY BY NAME g_pmc.pmc05
            NEXT FIELD pmc05
         END IF
         IF g_pmc.pmc30 NOT MATCHES '[123]' THEN
            DISPLAY BY NAME g_pmc.pmc30
            NEXT FIELD pmc30
         END IF
         IF cl_null(g_pmc.pmc17) AND g_pmc.pmc05 ='0' THEN  #VAT 特性
            DISPLAY BY NAME g_pmc.pmc17
            NEXT FIELD pmc17
         END IF
         #No.FUN-A30110  --Begin
#        CALL s_check_pmc01_occ01(g_pmc.pmc01,g_pmc.pmc03,g_dbs,'1')
#             RETURNING g_flag,g_flag1
#        IF g_flag = FALSE THEN
#           NEXT FIELD pmc03
#        END IF
         #No.FUN-A30110  --End

#      #FUN-590083
       ON CHANGE pmc03
          IF g_aza.aza44 = "Y" THEN
            #CALL cl_itemname_modcurr("pmc_file","pmc03",g_pmc.pmc01,g_pmc.pmc03) RETURNING g_i  #TQC-6C0060 mark
             IF g_zx14 = "Y" AND g_on_change THEN
               #CALL p_itemname_update("pmc_file","pmc03",g_pmc.pmc01,g_pmc.pmc03) RETURNING g_pmc.pmc03  #TQC-6C0060 mark
                CALL p_itemname_update("pmc_file","pmc03",g_pmc.pmc01) #TQC-6C0060
               #DISPLAY g_pmc.pmc03 TO pmc03  #TQC-6C0060 mark
                CALL cl_show_fld_cont()   #TQC-6C0060
             END IF
          END IF

#      #FUN-590083
       ON ACTION update_item
          IF g_aza.aza44 = "Y" THEN
             CALL GET_FLDBUF(pmc03) RETURNING g_pmc.pmc03
            #CALL p_itemname_update("pmc_file","pmc03",g_pmc.pmc01,g_pmc.pmc03) RETURNING g_pmc.pmc03  #TQC-6C0060 mark
             CALL p_itemname_update("pmc_file","pmc03",g_pmc.pmc01) #TQC-6C0060
             LET g_on_change=FALSE
            #DISPLAY g_pmc.pmc03 TO pmc03  #TQC-6C0060 mark
             CALL cl_show_fld_cont()   #TQC-6C0060
          ELSE
             CALL cl_err(g_pmc.pmc03,"lib-151",1)
          END IF

       #MOD-650015 --start
      #ON ACTION CONTROLO
      #   IF INFIELD(pmc01) THEN
      #       LET g_pmc.* = g_pmc_t.*
      #       CALL i600_show()
      #       NEXT FIELD pmc01
      #   END IF
       #MOD-650015 --end

      ON ACTION CONTROLP
         CASE
           #MOD-640290...............begin
           #WHEN INFIELD(pmc01) OR INFIELD(pmc03)
           #   CALL cl_init_qry_var()
           #   LET g_qryparam.form = "q_pmc"
           #   CALL cl_create_qry() RETURNING g_pmc.pmc01  #FUN-4A0062更改傳回值變數名稱
           #   DISPLAY "g_pmc.pmc01=",g_pmc.pmc01
           #   DISPLAY BY NAME g_pmc.pmc01
           #MOD-640290...............end
            {#No.MOD-480105不需controlp
             #MOD-480225
            WHEN INFIELD(pmc24)
               CALL cl_init_qry_var()
               LET g_qryparam.form = "q_pmc6"
               CALL cl_create_qry() RETURNING g_pmc.pmc24
               DISPLAY BY NAME g_pmc.pmc24
             #MOD-480225(end)
           }
            WHEN INFIELD(pmc02)
               CALL cl_init_qry_var()
               LET g_qryparam.form = "q_pmy"
               LET g_qryparam.default1 = g_pmc.pmc02
               CALL cl_create_qry() RETURNING g_pmc.pmc02
               DISPLAY BY NAME g_pmc.pmc02
            WHEN INFIELD(pmc04) #查詢付款廠商檔
               CALL cl_init_qry_var()
               LET g_qryparam.form = "q_pmc"
               LET g_qryparam.default1 = g_pmc.pmc04
               CALL cl_create_qry() RETURNING g_pmc.pmc04
               DISPLAY BY NAME g_pmc.pmc04
               SELECT pmc03 INTO l_pmc03_d FROM pmc_file
               WHERE pmc01 = g_pmc.pmc04
               DISPLAY l_pmc03_d TO pmc03_d
               NEXT FIELD pmc04
            WHEN INFIELD(pmc901) #查詢出貨廠商檔
               CALL cl_init_qry_var()
               LET g_qryparam.form = "q_pmc"
               LET g_qryparam.default1 = g_pmc.pmc901
               CALL cl_create_qry() RETURNING g_pmc.pmc901
               DISPLAY BY NAME g_pmc.pmc901
               SELECT pmc03 INTO l_pmc03_d FROM pmc_file
               WHERE pmc01 = g_pmc.pmc901
               DISPLAY l_pmc03_d TO pmc03_e
               NEXT FIELD pmc901
            WHEN INFIELD(pmc06) #查詢區域檔
               CALL cl_init_qry_var()
               LET g_qryparam.form = "q_gea"
               LET g_qryparam.default1 = g_pmc.pmc06
               CALL cl_create_qry() RETURNING g_pmc.pmc06
               DISPLAY BY NAME g_pmc.pmc06
               NEXT FIELD pmc06

            WHEN INFIELD(pmc07) #查詢國別檔
               CALL cl_init_qry_var()
               LET g_qryparam.form = "q_geb"
               LET g_qryparam.default1 = g_pmc.pmc07
               CALL cl_create_qry() RETURNING g_pmc.pmc07
               DISPLAY BY NAME g_pmc.pmc07
               NEXT FIELD pmc07

#FUN-550091
            WHEN INFIELD(pmc908) #查詢地區檔
               CALL cl_init_qry_var()
               LET g_qryparam.form = "q_geo"
               LET g_qryparam.default1 = g_pmc.pmc908
               CALL cl_create_qry() RETURNING g_pmc.pmc908
               DISPLAY BY NAME g_pmc.pmc908
               NEXT FIELD pmc908
#FUN-550091
            WHEN INFIELD(pmc15) #查詢地址資料檔 (0:表送貨地址)
               CALL cl_init_qry_var()
               LET g_qryparam.form = "q_pme"
               LET g_qryparam.default1 = g_pmc.pmc15
               LET g_qryparam.where = " ( pme02 = '0' OR pme02 = '2' )"
               CALL cl_create_qry() RETURNING g_pmc.pmc15
               DISPLAY BY NAME g_pmc.pmc15
               NEXT FIELD pmc15
            WHEN INFIELD(pmc16) #查詢地址資料檔 (1:表帳單地址)
               CALL cl_init_qry_var()
               LET g_qryparam.form = "q_pme"
               LET g_qryparam.default1 = g_pmc.pmc16
               LET g_qryparam.where = " ( pme02 = '1' OR pme02 = '2' )"
               CALL cl_create_qry() RETURNING g_pmc.pmc16
               DISPLAY BY NAME g_pmc.pmc16
               NEXT FIELD pmc16
            WHEN INFIELD(pmc17) #查詢付款條件資料檔(pma_file)
               CALL cl_init_qry_var()
               LET g_qryparam.form = "q_pma"
               LET g_qryparam.default1 = g_pmc.pmc17
               CALL cl_create_qry() RETURNING g_pmc.pmc17
               DISPLAY BY NAME g_pmc.pmc17
               CALL i600_pmc17(g_pmc.pmc17)
               NEXT FIELD pmc17
            WHEN INFIELD(pmc22) #查詢幣別資料檔
               CALL cl_init_qry_var()
               LET g_qryparam.form = "q_azi"
               LET g_qryparam.default1 = g_pmc.pmc22
               CALL cl_create_qry() RETURNING g_pmc.pmc22
               DISPLAY BY NAME g_pmc.pmc22
               NEXT FIELD pmc22
            WHEN INFIELD(pmc47) #
               CALL cl_init_qry_var()
               LET g_qryparam.form = "q_gec"
               LET g_qryparam.default1 = g_pmc.pmc47
               LET g_qryparam.arg1 = "1"
               CALL cl_create_qry() RETURNING g_pmc.pmc47
               DISPLAY BY NAME g_pmc.pmc47
               NEXT FIELD pmc47
            WHEN INFIELD(pmc55) #
               CALL cl_init_qry_var()
               LET g_qryparam.form = "q_nmt"
               LET g_qryparam.default1 = g_pmc.pmc55
               CALL cl_create_qry() RETURNING g_pmc.pmc55
               DISPLAY BY NAME g_pmc.pmc55
               NEXT FIELD pmc55
            WHEN INFIELD(pmc49) #價格條件
               CALL cl_init_qry_var()
               LET g_qryparam.form = "q_oah"
               LET g_qryparam.default1 = g_pmc.pmc49
               CALL cl_create_qry() RETURNING g_pmc.pmc49
               DISPLAY BY NAME g_pmc.pmc49
               SELECT oah02 INTO l_buf FROM oah_file WHERE oah01=g_pmc.pmc49
               DISPLAY l_buf TO FORMONLY.oah02
            #add 02/12/06 NO.A045
            WHEN INFIELD(pmc54) #佣金
               CALL cl_init_qry_var()
               LET g_qryparam.form = "q_ofs"
               LET g_qryparam.default1 = g_pmc.pmc54
               CALL cl_create_qry() RETURNING g_pmc.pmc54
               DISPLAY BY NAME g_pmc.pmc54
               NEXT FIELD pmc54
            #No:FUN-620063 --start--  #No:FUN-7B0080 --start-- 整段修改
            WHEN INFIELD(pmcud02)
               CALL cl_dynamic_qry() RETURNING g_pmc.pmcud02
               DISPLAY BY NAME g_pmc.pmcud02
               NEXT FIELD pmcud02
            WHEN INFIELD(pmcud03)
               CALL cl_dynamic_qry() RETURNING g_pmc.pmcud03
               DISPLAY BY NAME g_pmc.pmcud03
               NEXT FIELD pmcud03
            WHEN INFIELD(pmcud04)
               CALL cl_dynamic_qry() RETURNING g_pmc.pmcud04
               DISPLAY BY NAME g_pmc.pmcud04
               NEXT FIELD pmcud04
            WHEN INFIELD(pmcud05)
               CALL cl_dynamic_qry() RETURNING g_pmc.pmcud05
               DISPLAY BY NAME g_pmc.pmcud05
               NEXT FIELD pmcud05
            WHEN INFIELD(pmcud06)
               CALL cl_dynamic_qry() RETURNING g_pmc.pmcud06
               DISPLAY BY NAME g_pmc.pmcud06
               NEXT FIELD pmcud06
            #No:FUN-620063 ---end---  #No:FUN-7B0080 ---end---
            OTHERWISE EXIT CASE
         END CASE
{
      ON ACTION supplier_data #建立付款/出貨廠商檔
                LET l_cmd = "apmi600 '",g_pmc.pmc30,"'" CLIPPED
                CALL cl_cmdrun(l_cmd)
}
#FUN-550091
      ON ACTION local_data #建立地區檔
                LET l_cmd = "aooi110 '",g_pmc.pmc908,"'" CLIPPED
                CALL cl_cmdrun(l_cmd)
#FUN-550091
      ON ACTION country_data #建立國別檔
                LET l_cmd = "aooi090 '",g_pmc.pmc07,"'" CLIPPED
                CALL cl_cmdrun(l_cmd)

      ON ACTION area_data #建立區域檔
                LET l_cmd = "aooi100 '",g_pmc.pmc06,"'" CLIPPED
                CALL cl_cmdrun(l_cmd)

#     ON ACTION address
#              CALL i_pmc()
#              DISPLAY BY NAME g_pmc.pmc091
#              IF cl_null(g_pmc.pmc52) THEN LET g_pmc.pmc52 = g_pmc.pmc091 END IF
#              IF cl_null(g_pmc.pmc53) THEN LET g_pmc.pmc53 = g_pmc.pmc091 END IF
#              NEXT FIELD pmc52

      ON ACTION shipping_bill1 #建立送貨/帳單地址資料檔
               LET l_cmd = "apmi204 '",g_pmc.pmc15,"'" CLIPPED
               CALL cl_cmdrun(l_cmd)

      ON ACTION shipping_bill2 #建立送貨/帳單地址資料檔
               LET l_cmd = "apmi204 '",g_pmc.pmc16,"'" CLIPPED
               CALL cl_cmdrun(l_cmd)

      ON ACTION CONTROLZ
         CALL cl_show_req_fields()

      ON ACTION CONTROLG
         CALL cl_cmdask()

      ON ACTION CONTROLF                        # 欄位說明
         CALL cl_set_focus_form(ui.Interface.getRootNode()) RETURNING g_fld_name,g_frm_name #Add on 040913
         CALL cl_fldhelp(g_frm_name,g_fld_name,g_lang) #Add on 040913

       ON IDLE g_idle_seconds
          CALL cl_on_idle()
          CONTINUE INPUT

      ON ACTION about         #MOD-4C0121
         CALL cl_about()      #MOD-4C0121

      ON ACTION help          #MOD-4C0121
         CALL cl_show_help()  #MOD-4C0121


    END INPUT
END FUNCTION

FUNCTION i600_set_entry(p_cmd)
   DEFINE   p_cmd   LIKE type_file.chr1    #No.FUN-680136 VARCHAR(1)

   IF p_cmd = 'a' AND ( NOT g_before_input_done ) THEN
      CALL cl_set_comp_entry("pmc01",TRUE)
   END IF

   IF NOT g_before_input_done THEN
      CALL cl_set_comp_entry("pmc14",TRUE)
   END IF

   IF INFIELD(pmc30) OR (NOT g_before_input_done) THEN
      CALL cl_set_comp_entry("pmc04,pmc901",TRUE)
   END IF

   IF INFIELD(pmc14) OR (NOT g_before_input_done) THEN
      CALL cl_set_comp_entry("pmc54",TRUE)
   END IF

   IF INFIELD(pmc01) OR NOT g_before_input_done THEN      #No.FUN-A30110 
      #FUN-690021------add-----
      CALL cl_set_comp_entry("pmc03,pmc081,pmc082",TRUE)
      #FUN-690021------end-----
   END IF                                                 #No.FUN-A30110 

   #--no.FUN-870037 start--
   CALL cl_set_comp_entry("pmc281",TRUE)
   #--no.FUN-870037 end----

END FUNCTION

FUNCTION i600_set_no_entry(p_cmd)
   DEFINE   p_cmd   LIKE type_file.chr1    #No.FUN-680136 VARCHAR(1)
   DEFINE   l_cnt   LIKE type_file.num5    #No.FUN-A30110

display "i600_set_no_entry IN"
display "input=",g_before_input_done
   IF p_cmd = 'u' AND g_chkey = 'N' AND ( NOT g_before_input_done ) THEN
      CALL cl_set_comp_entry("pmc01",FALSE)
   END IF

   #FUN-690021------add-----
   #IF p_cmd = 'u' AND ( NOT g_before_input_done ) THEN     #MOD-890203
   #IF p_cmd = 'u' THEN     #MOD-890203
    IF p_cmd = 'u' AND ( NOT g_before_input_done ) THEN     #No.FUN-A30110
       #當參數設定使用廠商申請作業時,修改時不可更改簡稱/全名
       IF g_aza.aza62 = 'Y' THEN
           CALL cl_set_comp_entry("pmc03,pmc081,pmc082",FALSE)
       END IF
       #No.FUN-A30110  --Begin
       ##已確認則不能修改廠商簡稱
       #IF g_pmc.pmcacti = 'Y' THEN
       #    CALL cl_set_comp_entry("pmc03",FALSE)
       #END IF
       #No.FUN-A30110  --End
   END IF
   #FUN-690021------end-----

   IF NOT cl_null(g_argv1) AND (NOT g_before_input_done) THEN
      CALL cl_set_comp_entry("pmc14",FALSE)
   END IF

   IF INFIELD(pmc30) OR (NOT g_before_input_done) THEN
display "pmc30=",g_pmc.pmc30
      IF g_pmc.pmc30 MATCHES '[23]' THEN
         CALL cl_set_comp_entry("pmc04",FALSE)
      END IF
      IF g_pmc.pmc30 MATCHES '[13]' THEN
         CALL cl_set_comp_entry("pmc901",FALSE)
      END IF
   END IF

   IF INFIELD(pmc14) OR (NOT g_before_input_done) THEN
      IF g_pmc.pmc14 != '4' THEN
         CALL cl_set_comp_entry("pmc54",FALSE)
      END IF
   END IF

   #--no.FUN-870037 start--
   #IF g_pmc.pmc28 = 0 THEN   #MOD-940422
   IF g_pmc.pmc28 = 0 OR cl_null(g_pmc.pmc28) THEN   #MOD-940422
      CALL cl_set_comp_entry("pmc281",FALSE)
   END IF
　 #--NO.FUN-870037 end----

    #No.FUN-A30110  --Begin                                                     
    IF p_cmd = 'a' THEN                                                         
       IF INFIELD(pmc01) AND NOT cl_null(g_pmc.pmc01) THEN                      
          #客戶編號和廠商編號相同時,要求簡稱也要一致,新增時會鎖簡稱字段         
          SELECT COUNT(*) INTO l_cnt FROM occ_file                              
           WHERE occ01 = g_pmc.pmc01                                            
          IF cl_null(l_cnt) THEN LET l_cnt = 0 END IF                           
          IF l_cnt > 0 THEN                                                     
             CALL cl_set_comp_entry('pmc03',FALSE)                              
          END IF                                                                
       END IF                                                                   
    END IF                                                                      
    #No.FUN-A30110  --End 
END FUNCTION

FUNCTION i_pmc()

   OPEN WINDOW i603_w WITH FORM "apm/42f/apmi603"
       ATTRIBUTE (STYLE = g_win_style CLIPPED) #No:FUN-580092 HCN

    CALL cl_ui_locale("apmi603")

   INPUT g_pmc.pmc091 ,g_pmc.pmc092 ,g_pmc.pmc093,g_pmc.pmc094,g_pmc.pmc095
         WITHOUT DEFAULTS
    FROM pmc091,pmc092,pmc093,pmc094,pmc095
   #TQC-860019-beign-add
     ON IDLE g_idle_seconds
        CALL cl_on_idle()
        CONTINUE INPUT
     END INPUT
   #TQC-860019-end-add
   CLOSE WINDOW i603_w
END FUNCTION


FUNCTION i600_pmc05()  			#Status
    DEFINE l_str1   LIKE type_file.chr1000, #No.FUN-680136 VARCHAR(38)
           l_ans    LIKE type_file.chr1     #No.FUN-680136 VARCHAR(01)

    # 如從已核準更改成未核準或核準中時 pmh_file 一併修改
    IF g_pmc_o.pmc05 ='0' AND (g_pmc.pmc05 = '1' OR g_pmc.pmc05 ='2' ) THEN
       UPDATE pmh_file SET pmh05 = g_pmc.pmc05
        WHERE pmh02 = g_pmc.pmc01
          AND pmh13 = g_pmc.pmc22
#         AND pmh21 = " "                                             #CHI-860042         #CHI-8C0017 Mark
#         AND pmh22 = '1'                                             #CHI-860042         #CHI-8C0017 Mark
       IF SQLCA.sqlcode THEN
          IF SQLCA.sqlcode != 100 THEN
#            CALL cl_err('Update pmh_file:',SQLCA.sqlcode,1)   #No.FUN-660129
             CALL cl_err3("upd","pmh_file","","",SQLCA.sqlcode,"Update pmh_file:","",1)  #No.FUN-660129
          END IF
       END IF
    END IF
    IF (g_pmc_o.pmc05 ='1' OR  g_pmc_o.pmc05 ='2') AND g_pmc.pmc05='0' THEN
       UPDATE pmh_file SET pmh05 = g_pmc.pmc05
        WHERE pmh02 = g_pmc.pmc01
          AND pmh13 = g_pmc.pmc22
#         AND pmh21 = " "                                             #CHI-860042         #CHI-8C0017 Mark
#         AND pmh22 = '1'                                             #CHI-860042         #CHI-8C0017 Mark
       IF SQLCA.sqlcode THEN
          IF SQLCA.sqlcode != 100 THEN
#            CALL cl_err('Update pmh_file:',SQLCA.sqlcode,1)   #No.FUN-660129
             CALL cl_err3("upd","pmh_file","","",SQLCA.sqlcode,"Update pmh_file:","",1)  #No.FUN-660129
          END IF
       END IF
    END IF
END FUNCTION

FUNCTION i600_pmc04(p_cmd)  			#付款廠商
   DEFINE   p_cmd       LIKE type_file.chr1,    #No.FUN-680136 VARCHAR(1)
            l_pmc03     LIKE pmc_file.pmc03,	#付款廠商簡稱
            l_pmc30     LIKE pmc_file.pmc30,	#性質
            l_pmcacti   LIKE pmc_file.pmcacti

   LET g_errno = ' '
   SELECT pmc03,pmc30,pmcacti INTO l_pmc03,l_pmc30,l_pmcacti
     FROM pmc_file
    WHERE pmc01 = g_pmc.pmc04

   CASE WHEN SQLCA.SQLCODE = 100  LET g_errno = 'mfg3004'
                           LET l_pmc03 = NULL
        WHEN l_pmc30  ='1' LET g_errno = 'mfg3004'
        WHEN l_pmcacti='N'             LET g_errno = '9028'
        WHEN l_pmcacti MATCHES '[PH]'  LET g_errno = '9038' #FUN-690024 add
        OTHERWISE          LET g_errno = SQLCA.SQLCODE USING '-------'
   END CASE
   IF cl_null(g_errno) OR p_cmd = 'd' THEN
      DISPLAY l_pmc03 TO FORMONLY.pmc03_d
   END IF
END FUNCTION

FUNCTION i600_pmc02(p_cmd)  			#廠商分類代碼
   DEFINE   p_cmd	LIKE type_file.chr1,    #No.FUN-680136 VARCHAR(1)
            l_pmyacti   LIKE pmy_file.pmyacti,
            l_pmy02     LIKE pmy_file.pmy02

   LET g_errno = ' '
   SELECT pmy02,pmyacti INTO l_pmy02,l_pmyacti
     FROM pmy_file
    WHERE pmy01 = g_pmc.pmc02

   CASE WHEN SQLCA.SQLCODE = 100  LET g_errno = 'mfg3005'
                                  LET l_pmy02=''
                                   DISPLAY l_pmy02 TO pmy02 #No:MOD-580018
        WHEN l_pmyacti='N'        LET g_errno = '9028'
        OTHERWISE                 LET g_errno = SQLCA.SQLCODE USING '-------'
   END CASE
   IF p_cmd='d' OR cl_null(g_errno)THEN
      DISPLAY l_pmy02 TO pmy02
   END IF
END FUNCTION

#FUN-550091
FUNCTION i600_pmc908(p_cmd)  #地區代號
   DEFINE   p_cmd       LIKE type_file.chr1,    #No.FUN-680136 VARCHAR(1)
            l_geo03     LIKE geb_file.geb03,		#國別代號
            l_geb02     LIKE gea_file.gea02,		#國別名稱
            l_geo02     LIKE geb_file.geb02,		#地區代號
            l_geoacti   LIKE geb_file.gebacti, 		#有效碼
            l_gea02     LIKE gea_file.gea02             #區域名稱

   LET g_errno = ' '
   SELECT geo03,geoacti,geo02
     INTO l_geo03,l_geoacti,l_geo02
     FROM geo_file
    WHERE geo01 = g_pmc.pmc908
   #CASE WHEN SQLCA.SQLCODE = 100  LET g_errno = 'mfg3029'   #FUN-550091
   CASE WHEN SQLCA.SQLCODE = 100  LET g_errno = 'mfg3011'   #FUN-550091
                                  LET l_geo03   = NULL
                                  LET l_geoacti = NULL
        WHEN l_geoacti='N' LET g_errno = '9028'
        OTHERWISE          LET g_errno = SQLCA.SQLCODE USING '-------'
   END CASE
   IF p_cmd = 'a' OR cl_null(g_errno)  THEN  #MOD-680067 add cl_null(g_errno)
      LET g_pmc.pmc07 = l_geo03
      DISPLAY BY NAME g_pmc.pmc07
      SELECT geb02 INTO l_geb02 FROM geb_file WHERE geb01 = g_pmc.pmc07
      DISPLAY l_geo02 TO geo02
      DISPLAY l_geb02 TO geb02
      SELECT gea01,gea02 INTO g_pmc.pmc06,l_gea02 FROM gea_file,geb_file
             WHERE gea01 = geb03 AND geb01 = l_geo03
      DISPLAY BY NAME g_pmc.pmc06
      DISPLAY l_gea02 TO gea02
   END IF
END FUNCTION
#END FUN-550091

#-----MOD-860269---------
#FUNCTION i600_pmc06(p_cmd)  #區域代號
#   DEFINE   p_cmd       LIKE type_file.chr1,    #No.FUN-680136 VARCHAR(1)
#            l_geaacti   LIKE gea_file.geaacti	
#
#   LET g_errno = ' '
#   SELECT geaacti INTO l_geaacti FROM gea_file
#    WHERE gea01=g_pmc.pmc06
#
#   CASE WHEN SQLCA.SQLCODE = 100  LET g_errno = 'mfg3139'
#                                  LET l_geaacti = NULL
#        WHEN l_geaacti='N' LET g_errno = '9028'
#        OTHERWISE          LET g_errno = SQLCA.SQLCODE USING '-------'
#   END CASE
#END FUNCTION
FUNCTION i600_pmc06(p_cmd)  #區域
DEFINE
    p_cmd           VARCHAR(1),
    l_gea02         LIKE gea_file.gea02,
    l_geaacti       LIKE gea_file.geaacti

    LET g_errno = ' '
     SELECT gea02,geaacti INTO l_gea02,l_geaacti #MOD-530303
        FROM gea_file
        WHERE gea01 = g_pmc.pmc06
    CASE WHEN SQLCA.SQLCODE = 100  LET g_errno = 'mfg3139'
                                   LET l_gea02 = NULL
          WHEN l_geaacti='N'        LET g_errno='9028'
         OTHERWISE          LET g_errno = SQLCA.SQLCODE USING '-------'
    END CASE
    DISPLAY l_gea02 TO gea02
END FUNCTION

FUNCTION i600_pmc07(p_cmd)  #國別
DEFINE
    p_cmd           VARCHAR(1),
    l_gea02         LIKE gea_file.gea02,
    l_geb02         LIKE geb_file.geb02,
    l_gebacti       LIKE geb_file.gebacti

    LET g_errno = ' '
     SELECT geb02,gebacti INTO l_geb02,l_gebacti
        FROM geb_file
        WHERE geb01 = g_pmc.pmc07
    CASE WHEN SQLCA.SQLCODE = 100  LET g_errno = 'mfg3029'
                            LET l_geb02 = NULL
          WHEN l_gebacti='N'        LET g_errno='9028'
         OTHERWISE          LET g_errno = SQLCA.SQLCODE USING '-------'
    END CASE
    DISPLAY l_geb02 TO geb02
    SELECT gea01,gea02 INTO g_pmc.pmc06,l_gea02 FROM gea_file,geb_file
           WHERE gea01 = geb03 AND geb01 = g_pmc.pmc07
    DISPLAY BY NAME g_pmc.pmc06
    DISPLAY l_gea02 TO gea02
END FUNCTION
#-----END MOD-860269-----

FUNCTION i600_area(p_no,p_code)  #區域代號
   DEFINE   p_no        LIKE pme_file.pme01,
            p_code      LIKE pme_file.pme02,
            l_pme02     LIKE pme_file.pme02,
            l_pmeacti   LIKE pme_file.pmeacti		

   LET g_errno = ' '
   SELECT pme02,pmeacti INTO l_pme02,l_pmeacti
     FROM pme_file
    WHERE pme01 = p_no
   CASE WHEN SQLCA.SQLCODE = 100  LET g_errno = 'mfg3345'
                                  LET l_pmeacti = NULL
        WHEN p_code = '0'  IF l_pme02 = '1' THEN LET g_errno = 'mfg3019' END IF
        WHEN p_code = '1'  IF l_pme02 = '0' THEN LET g_errno = 'mfg3026' END IF
        WHEN l_pmeacti='N' LET g_errno = '9028'
        OTHERWISE          LET g_errno = SQLCA.SQLCODE USING '-------'
   END CASE
END FUNCTION

FUNCTION i600_pmc17(p_cmd)  #付款方式
   DEFINE   p_cmd        LIKE type_file.chr1,    #No.FUN-680136 VARCHAR(1)
            l_pma02      LIKE pma_file.pma02,
            l_pmaacti    LIKE pma_file.pmaacti

   LET g_errno = ' '
   LET l_pma02 = ' ' #MOD-680067 add
   SELECT pma02,pmaacti
          INTO l_pma02,l_pmaacti
          FROM pma_file WHERE pma01 = g_pmc.pmc17
   CASE WHEN SQLCA.SQLCODE = 100  LET g_errno = 'mfg3099'
                           LET l_pmaacti = NULL  LET l_pma02=NULL
        WHEN l_pmaacti='N' LET g_errno = '9028'
        OTHERWISE          LET g_errno = SQLCA.SQLCODE USING '-------'
   END CASE
   DISPLAY l_pma02 TO FORMONLY.pma02
END FUNCTION

FUNCTION i600_pmc22(p_cmd)  #幣別
   DEFINE   p_cmd       LIKE type_file.chr1,    #No.FUN-680136 VARCHAR(1)
            l_azi02     LIKE azi_file.azi02,
            l_aziacti   LIKE azi_file.aziacti

   LET g_errno = ' '
   SELECT aziacti,azi02
     INTO l_aziacti,l_azi02
     FROM azi_file WHERE azi01=g_pmc.pmc22

   CASE WHEN SQLCA.SQLCODE = 100  LET g_errno = 'mfg3008'
                                  LET l_aziacti = NULL
                                  LET l_azi02 = NULL
                                  DISPLAY l_azi02 TO azi02
        WHEN l_aziacti='N' LET g_errno = '9028'
        OTHERWISE          LET g_errno = SQLCA.SQLCODE USING '-------'
   END CASE
   IF p_cmd='d' OR cl_null(g_errno)THEN
      DISPLAY l_azi02 TO azi02
   END IF

END FUNCTION

FUNCTION i600_pmc47(p_cmd)  #幣別
   DEFINE   p_cmd       LIKE type_file.chr1,    #No.FUN-680136 VARCHAR(1)
            l_gec02     LIKE gec_file.gec02,
            l_gecacti   LIKE gec_file.gecacti

   LET g_errno = ' '
   SELECT gecacti,gec02
     INTO l_gecacti,l_gec02
     FROM gec_file WHERE gec01=g_pmc.pmc47
                     AND gec011='1'  #進項

   CASE WHEN SQLCA.SQLCODE = 100  LET g_errno = 'mfg3044'
                                  LET l_gecacti = NULL
                                  LET l_gec02 = NULL
                                  DISPLAY l_gec02 TO gec02
        WHEN l_gecacti='N'        LET g_errno = '9028'
        OTHERWISE                 LET g_errno = SQLCA.SQLCODE USING '-------'
   END CASE
   IF p_cmd='d' OR cl_null(g_errno)THEN
      DISPLAY l_gec02 TO gec02
   END IF
END FUNCTION

FUNCTION i600_q()

    LET g_row_count = 0
    LET g_curs_index = 0
    CALL cl_navigator_setting( g_curs_index, g_row_count )
    INITIALIZE g_pmc.* TO NULL             #No.FUN-6A0162
   MESSAGE ""
   CALL cl_opmsg('q')
   DISPLAY '   ' TO FORMONLY.cnt
   CALL i600_cs()                          # 宣告 SCROLL CURSOR
   IF INT_FLAG THEN
      LET INT_FLAG = 0
      CLEAR FORM
      INITIALIZE g_pmc.* TO NULL
      RETURN
   END IF
   OPEN i600_count
   FETCH i600_count INTO g_row_count
   DISPLAY g_row_count TO FORMONLY.cnt
   DISPLAY g_curs_index TO FORMONLY.idx    # No.FUN-660190
   OPEN i600_cs                            # 從DB產生合乎條件TEMP(0-30秒)
   IF SQLCA.sqlcode THEN
      CALL cl_err(g_pmc.pmc01,SQLCA.sqlcode,0)
      INITIALIZE g_pmc.* TO NULL
   ELSE
      CALL i600_fetch('F')                  # 讀出TEMP第一筆並顯示
      CALL i600_list_fill()                 #No.FUN-820034
      LET g_bp_flag = 'list'                #No.FUN-820034
      #CALL i600_bp("G")                     #No.FUN-820034
   END IF

   #NO.FUN-840033 add--
#   IF cl_null(g_argv2) THEN                #CHI-880031 Mark
#      CALL i600_bp("G")                    #CHI-880031 Mark
#   END IF                                  #CHI-880031 Mark
   #no.FUN-840033 add--

END FUNCTION

#No.FUN-820034 --Begin
FUNCTION i600_list_fill()
DEFINE l_pmc01         LIKE pmc_file.pmc01
DEFINE l_i             LIKE type_file.num10
DEFINE l_rowid         LIKE type_file.chr18                                                                                           #No.TQC-940183

    CALL g_pmc_l.clear()
    LET l_i = 1
    FOREACH i600_list_cur INTO l_rowid,l_pmc01
       IF SQLCA.sqlcode THEN
          CALL cl_err('foreach list_cur',SQLCA.sqlcode,1)
          CONTINUE FOREACH
       END IF
       SELECT pmc01,pmc03,pmc081,pmc24,pmc14,pmc02,
              pmc30,pmc04,pmc901,pmc05,pmcacti,
              pmc1920
         INTO g_pmc_l[l_i].*
         FROM pmc_file
        WHERE pmc01=l_pmc01
       LET l_i = l_i + 1
       IF l_i > g_max_rec THEN
          CALL cl_err( '', 9035, 0 )
          EXIT FOREACH
       END IF
    END FOREACH
    LET g_rec_b1 = l_i - 1
    DISPLAY ARRAY g_pmc_l TO s_pmc_l.* ATTRIBUTE(COUNT=g_rec_b1,UNBUFFERED)
       BEFORE DISPLAY
          EXIT DISPLAY
    END DISPLAY

END FUNCTION
#No.FUN-820034 --End

FUNCTION i600_fetch(p_flpmc)
   DEFINE   p_flpmc   LIKE type_file.chr1     #No.FUN-680136 VARCHAR(1)

   CASE p_flpmc
      WHEN 'N' FETCH NEXT     i600_cs INTO g_pmc_rowid,g_pmc.pmc01
      WHEN 'P' FETCH PREVIOUS i600_cs INTO g_pmc_rowid,g_pmc.pmc01
      WHEN 'F' FETCH FIRST    i600_cs INTO g_pmc_rowid,g_pmc.pmc01
      WHEN 'L' FETCH LAST     i600_cs INTO g_pmc_rowid,g_pmc.pmc01
      WHEN '/'
            IF (NOT g_no_ask) THEN
                CALL cl_getmsg('fetch',g_lang) RETURNING g_msg
                   LET INT_FLAG = 0  ######add for prompt bug
                PROMPT g_msg CLIPPED,': ' FOR g_jump
                   ON IDLE g_idle_seconds
                      CALL cl_on_idle()
#                      CONTINUE PROMPT

      ON ACTION about         #MOD-4C0121
         CALL cl_about()      #MOD-4C0121

      ON ACTION help          #MOD-4C0121
         CALL cl_show_help()  #MOD-4C0121

      ON ACTION controlg      #MOD-4C0121
         CALL cl_cmdask()     #MOD-4C0121


                END PROMPT
                IF INT_FLAG THEN
                    LET INT_FLAG = 0
                    EXIT CASE
                END IF
            END IF
            FETCH ABSOLUTE g_jump i600_cs INTO g_pmc_rowid,g_pmc.pmc01
            LET g_no_ask = FALSE
   END CASE

   IF SQLCA.sqlcode THEN
      CALL cl_err(g_pmc.pmc01,SQLCA.sqlcode,0)
      INITIALIZE g_pmc.* TO NULL  #TQC-6B0105
      LET g_pmc_rowid = NULL      #TQC-6B0105
      RETURN
   ELSE
      CASE p_flpmc
         WHEN 'F' LET g_curs_index = 1
         WHEN 'P' LET g_curs_index = g_curs_index - 1
         WHEN 'N' LET g_curs_index = g_curs_index + 1
         WHEN 'L' LET g_curs_index = g_row_count
         WHEN '/' LET g_curs_index = g_jump
      END CASE

      CALL cl_navigator_setting( g_curs_index, g_row_count )
      DISPLAY g_curs_index TO FORMONLY.idx      #No.FUN-660190
   END IF

   SELECT * INTO g_pmc.* FROM pmc_file          # 重讀DB,因TEMP有不被更新特性
    WHERE ROWID = g_pmc_rowid
   IF SQLCA.sqlcode THEN
#     CALL cl_err(g_pmc.pmc01,SQLCA.sqlcode,0)   #No.FUN-660129
      CALL cl_err3("sel","pmc_file","","",SQLCA.sqlcode,"","",1)  #No.FUN-660129
      INITIALIZE g_pmc.* TO NULL            #FUN-4C0056 add
   ELSE
      #FUN-590083  #TQC-6C0060 mark
     #IF g_aza.aza44 = "Y" AND NOT cl_null(g_pmc.pmc03) THEN
     #   CALL cl_itemname_by_lang("pmc_file","pmc03",g_pmc.pmc01 CLIPPED,g_lang,g_pmc.pmc03) RETURNING g_pmc.pmc03
     #END IF

      LET g_data_owner = g_pmc.pmcuser      #FUN-4C0056 add
      LET g_data_group = g_pmc.pmcgrup      #FUN-4C0056 add
      CALL i600_show()                      # 重新顯示
   END IF
END FUNCTION

FUNCTION i600_show()
   DEFINE   l_msg     LIKE ze_file.ze03,    #No.FUN-680136 VARCHAR(30)
            l_gea02   LIKE gea_file.gea02,
            l_geb02   LIKE geb_file.geb02,
            l_geo02   LIKE geo_file.geo02   #FUN-550091


   LET g_pmc_t.* = g_pmc.*
   LET g_pmc_o.* = g_pmc.*
   #MOD-680067-begin-add
   LET l_gea02 = ' '
   LET l_geb02 = ' '
   LET l_buf   = ' '
   #MOD-680067-end-add
   # modify 02/12/06 NO.A045
   DISPLAY BY NAME
      g_pmc.pmc01, g_pmc.pmc03,
      g_pmc.pmc081, g_pmc.pmc082,
      g_pmc.pmc24, g_pmc.pmc903,
      g_pmc.pmc14, g_pmc.pmc05, g_pmc.pmc02,
      g_pmc.pmc30, g_pmc.pmc04, g_pmc.pmc901,
      g_pmc.pmc17, g_pmc.pmc49, g_pmc.pmc22 ,
      g_pmc.pmc47, g_pmc.pmc54,  g_pmc.pmc911,
      g_pmc.pmc48, g_pmc.pmc902,g_pmc.pmc27 ,
      #g_pmc.pmc50, g_pmc.pmc51,  g_pmc.pmc28, g_pmc.pmc912, #FUN-660067 add pmc912
      g_pmc.pmc50, g_pmc.pmc51,  g_pmc.pmc28, g_pmc.pmc281,g_pmc.pmc912, #FUN-660067 add pmc912  #FUN-870037
      g_pmc.pmc913,  #No:FUN-880094 add
      #g_pmc.pmc06, g_pmc.pmc07, g_pmc.pmc904,    #FUN-550091
      g_pmc.pmc908,g_pmc.pmc07, g_pmc.pmc06, g_pmc.pmc904,   #FUN-550091
      g_pmc.pmc091, g_pmc.pmc092, g_pmc.pmc093,
      g_pmc.pmc094, g_pmc.pmc095,
      g_pmc.pmc52,  g_pmc.pmc53,
      g_pmc.pmc15, g_pmc.pmc16,
      g_pmc.pmc56, g_pmc.pmc55, g_pmc.pmc57, g_pmc.pmc10,    #No.FUN-960022 ADD pmc57
      g_pmc.pmc11, g_pmc.pmc12,
      g_pmc.pmc1917,g_pmc.pmc1918,g_pmc.pmc1919,  #FUN-720041
      #FUN-6A0007...............begin
      g_pmc.pmc1912,
      g_pmc.pmc1913,
      g_pmc.pmc1914,g_pmc.pmc1915,g_pmc.pmc1916,
      #FUN-6A0007...............end
      #No:FUN-620063 --start--
      g_pmc.pmcud01,g_pmc.pmcud02,g_pmc.pmcud03,g_pmc.pmcud04,g_pmc.pmcud05,
      g_pmc.pmcud06,g_pmc.pmcud07,g_pmc.pmcud08,g_pmc.pmcud09,g_pmc.pmcud10,
      g_pmc.pmcud11,g_pmc.pmcud12,g_pmc.pmcud13,g_pmc.pmcud14,g_pmc.pmcud15,
      #No:FUN-620063 ---end---
      g_pmc.pmcuser,g_pmc.pmcgrup,g_pmc.pmcmodu,
     #g_pmc.pmcdate,g_pmc.pmcacti                                       #FUN-820034
      g_pmc.pmcdate,g_pmc.pmcacti,g_pmc.pmc1920                         #FUN-820034
   DISPLAY "g_pmc.pmcacti=",g_pmc.pmcacti
   #CALL s_kindes(g_pmc.pmc30) RETURNING l_msg
   #DISPLAY l_msg TO FORMONLY.desc2
   #CALL s_datype(g_pmc.pmc14) RETURNING l_msg
   #DISPLAY l_msg TO FORMONLY.desc3
   SELECT geo02 INTO l_geo02 FROM geo_file WHERE geo01 = g_pmc.pmc908   #FUN-550091
   DISPLAY l_geo02 TO geo02   #FUN-550091
   SELECT geb02 INTO l_geb02 FROM geb_file WHERE geb01 = g_pmc.pmc07
   DISPLAY l_geb02 TO geb02
   SELECT gea02 INTO l_gea02 FROM gea_file WHERE gea01 = g_pmc.pmc06
   DISPLAY l_gea02 TO gea02
   SELECT oah02 INTO l_buf FROM oah_file WHERE oah01=g_pmc.pmc49
   DISPLAY l_buf TO FORMONLY.oah02
   CALL i600_pmc1912()   #FUN-6A0007
   CALL i600_pmc1913()   #FUN-6A0007
   CALL i600_pmc04('d')
   CALL i600_pmc901('d')
   CALL i600_pmc02('d')
   CALL i600_pmc22('d')
   CALL i600_pmc47('d')
   CALL i600_pmc17(g_pmc.pmc17)
  #CALL cl_set_field_pic("","","","","",g_pmc.pmcacti) #MOD-530491 #FUN-690021 mark
   CALL i600_show_pic()                                            #FUN-690021 mod
   CALL cl_show_fld_cont()                   #No:FUN-550037 hmf

END FUNCTION

FUNCTION s_datype(p_code)
   DEFINE p_code    LIKE type_file.chr1     #No.FUN-680136 VARCHAR(1)
   DEFINE l_msg     LIKE ze_file.ze03       #No.FUN-680136 VARCHAR(10)

   # modify 02/12/06 NO.A045
   CASE g_lang
      WHEN '0'
         CASE WHEN p_code='1' LET l_msg='廠商'
              WHEN p_code='2' LET l_msg='雜項'
              WHEN p_code='3' LET l_msg='員工'
              WHEN p_code='4' LET l_msg='代理商'
         END CASE
      WHEN '2'
         CASE WHEN p_code='1' LET l_msg='廠商'
              WHEN p_code='2' LET l_msg='雜項'
              WHEN p_code='3' LET l_msg='員工'
              WHEN p_code='4' LET l_msg='代理商'
         END CASE
      OTHERWISE
         CASE WHEN p_code='1' LET l_msg='VEN.'
              WHEN p_code='2' LET l_msg='MISC'
              WHEN p_code='3' LET l_msg='EMPL'
              WHEN p_code='4' LET l_msg='AGENT'
         END CASE
   END CASE
   RETURN l_msg
END FUNCTION

FUNCTION i600_u()
   IF s_shut(0) THEN RETURN END IF                #檢查權限
   IF g_pmc.pmc01 IS NULL THEN
      CALL cl_err('',-400,0)
      RETURN
   END IF

   SELECT * INTO g_pmc.* FROM pmc_file
    WHERE pmc01=g_pmc.pmc01

  #No.FUN-820034  --Begin
   IF NOT s_dc_ud_flag('5',g_pmc.pmc1920,g_plant,'u') THEN
      CALL cl_err(g_pmc.pmc1920,'aoo-045',1)
      RETURN
   END IF
  #No.FUN-820034  --End

   IF g_pmc.pmcacti ='N' THEN    #檢查資料是否為無效
      CALL cl_err(g_pmc.pmc01,'mfg1000',0)
      RETURN
   END IF

   #FUN-690021-------add-------
   IF g_pmc.pmcacti = 'H' THEN
     #已留置或停止交易,則不能做任何修改!
      CALL cl_err('','axm-223',1)
      RETURN
   END IF
  #FUN-690021-------add-end---

   MESSAGE ""
   CALL cl_opmsg('u')
   LET g_pmc01_t = g_pmc.pmc01
   LET g_pmc24_t = g_pmc.pmc24
   LET g_pmc03_t = g_pmc.pmc03       #No.FUN-A30110

   IF g_action_choice <> "reproduce" THEN    #FUN-680010
      LET g_success = 'Y'                    #FUN-9A0056 add
      BEGIN WORK
   END IF

   OPEN i600_cl USING g_pmc_rowid
   IF STATUS THEN
      CALL cl_err("OPEN i600_cl:", STATUS, 1)
      CLOSE i600_cl
      ROLLBACK WORK
      RETURN
   END IF
   FETCH i600_cl INTO g_pmc.*               # 對DB鎖定
   IF SQLCA.sqlcode THEN
      CALL cl_err(g_pmc.pmc01,SQLCA.sqlcode,0)
      ROLLBACK WORK      #FUN-680010
      RETURN
  #ELSE  #FUN-590083  #TQC-6C0060 mark
  #   IF g_aza.aza44 = "Y" THEN
  #      IF NOT cl_null(g_pmc.pmc03) THEN
  #         CALL cl_itemname_modsys("pmc_file","pmc03",g_pmc.pmc01,g_pmc.pmc03) RETURNING g_i
  #      END IF
  #      CALL cl_itemname_by_lang("pmc_file","pmc03",g_pmc.pmc01,g_lang,g_pmc.pmc03) RETURNING g_pmc.pmc03
  #   END IF
   END IF
   LET g_pmc.pmcmodu = g_user                   #修改者
   LET g_pmc.pmcdate = g_today                  #修改日期
   #No:FUN-880094---Begin
   IF g_pmc.pmc913 IS NULL OR cl_null(g_pmc.pmc913) THEN
      LET g_pmc.pmc913 = 'N'
   END IF
   #No:FUN-880094---End
   CALL i600_show()                          # 顯示最新資料
   WHILE TRUE
      CALL i600_i("u")                      # 欄位更改
      IF INT_FLAG THEN
         LET INT_FLAG = 0
         LET g_pmc.* = g_pmc_t.*
         CALL i600_show()
         CALL cl_err('',9001,0)
        #IF g_aza.aza44 = "Y" THEN      #FUN-590083  #TQC-6C0060 mark
        #   CALL cl_itemname_modcurr("pmc_file","pmc03",g_pmc.pmc01,g_pmc.pmc03) RETURNING g_i
        #END IF
         ROLLBACK WORK     #FUN-680010
         EXIT WHILE
      END IF
     #IF g_aza.aza44 THEN    #FUN-590083  #TQC-6C0060 mark
     #   CALL cl_itemname_switch(1,"pmc_file","pmc03",g_pmc.pmc01,g_pmc.pmc03) RETURNING g_pmc.pmc03
     #END IF
      display 'pmc082:',g_pmc.pmc082
      display 'pmc092:',g_pmc.pmc092
      display 'pmc093:',g_pmc.pmc093
      display 'pmc094:',g_pmc.pmc094
      display 'pmc095:',g_pmc.pmc095
      display 'g_pmc01_t:',g_pmc01_t
      UPDATE pmc_file SET pmc_file.* = g_pmc.*    # 更新DB
        WHERE pmc01 = g_pmc01_t
       #WHERE ROWID = g_pmc_rowid               # COLAUTH?
      #IF SQLCA.sqlcode THEN         #FUN-680010
      IF SQLCA.SQLERRD[3]=0 THEN
         #CALL cl_err(g_pmc.pmc01,SQLCA.sqlcode,0)   #No.FUN-660129
         CALL cl_err3("upd","pmc_file",g_pmc01_t,"",SQLCA.sqlcode,"","",1)  #No.FUN-660129
         ROLLBACK WORK     #FUN-680010
         BEGIN WORK        #FUN-680010
         LET g_success = 'Y'           #No.FUN-A30110
         CONTINUE WHILE
     #ELSE  #TQC-6C0060 mark
     #   IF g_aza.aza44 THEN    #FUN-590083
     #      CALL cl_itemname_switch(2,"pmc_file","pmc03",g_pmc.pmc01,g_pmc.pmc03) RETURNING g_pmc.pmc03
     #   END IF
      END IF
      #No.FUN-A30110  --Begin
      IF g_action_choice <> "reproduce" THEN
         IF g_pmc.pmc03 <> g_pmc03_t THEN
            CALL s_showmsg_init()
            CALL s_upd_abbr(g_pmc.pmc01,g_pmc.pmc03,g_dbs,'1','N')
            IF g_success = 'N' THEN
               CALL s_showmsg()
               ROLLBACK WORK
               BEGIN WORK
               LET g_success = 'Y'
               CONTINUE WHILE
            END IF
         END IF
      END IF
      #No.FUN-A30110  --End
      IF g_pmc01_t != g_pmc.pmc01 THEN
         UPDATE pmg_file SET pmg01=g_pmc.pmc01   # 更新供應商備註檔之KEY值
          WHERE pmg01=g_pmc01_t
         IF SQLCA.sqlcode !=0 AND SQLCA.sqlcode != 100 THEN
#           CALL cl_err("pmg",SQLCA.sqlcode,0)   #No.FUN-660129
            CALL cl_err3("upd","pmg_file","","",SQLCA.sqlcode,"","pmg",1)  #No.FUN-660129
            ROLLBACK WORK     #FUN-680010
            BEGIN WORK        #FUN-680010
            LET g_success = 'Y'           #No.FUN-A30110
            CONTINUE WHILE
         END IF
         UPDATE pmd_file SET pmd01=g_pmc.pmc01 #更新供應商聯絡人資料檔之KEY值
          WHERE pmd01=g_pmc01_t
         IF SQLCA.sqlcode !=0 AND SQLCA.sqlcode != 100 THEN
#           CALL cl_err("pmd",SQLCA.sqlcode,0)   #No.FUN-660129
            CALL cl_err3("upd","pmd_file","","",SQLCA.sqlcode,"","pmd",1)  #No.FUN-660129
            ROLLBACK WORK     #FUN-680010
            BEGIN WORK        #FUN-680010
            LET g_success = 'Y'           #No.FUN-A30110
            CONTINUE WHILE
         END IF
      END IF

      IF g_pmc.pmc24 IS NOT NULL THEN
         DELETE FROM apl_file WHERE apl01 = g_pmc.pmc24                            #MOD-4B0007
         ##FUN-680010
         IF SQLCA.sqlcode THEN
            CALL cl_err3("del","apl_file",g_pmc.pmc24,"",SQLCA.sqlcode,"","",1)  #No.FUN-660129
           #ROLLBACK WORK              #FUN-9A0056 mark
           #CONTINUE WHILE             #FUN-9A0056 mark
            LET g_success = 'N'        #FUN-9A0056 add
         END IF
         ##FUN-680010
         INSERT INTO apl_file(apl01,apl02,apl021,apl03)                            #MOD-4B0007
                       VALUES(g_pmc.pmc24,g_pmc.pmc081,g_pmc.pmc082,g_pmc.pmc091)  #MOD-4B0007
         ##FUN-680010
         IF SQLCA.sqlcode THEN
            CALL cl_err3("del","apl_file",g_pmc.pmc24,"",SQLCA.sqlcode,"","",1)  #No.FUN-660129
           #ROLLBACK WORK              #FUN-9A0056 mark
           #CONTINUE WHILE             #FUN-9A0056 mark
            LET g_success ='N'         #FUN-9A0056 add
         END IF
      END IF

      #FUN-680010
      IF g_action_choice <> "reproduce" THEN
         #FUN-860036
         #CASE aws_mdmcli('vendor','update',base.TypeInfo.create(g_pmc),'','','','') #FUN-870166
         CASE aws_mdmdata('pmc_file','update',g_pmc.pmc01,base.TypeInfo.create(g_pmc),'CreateVendorData') #FUN-870166
            WHEN 0  #無與 MDM 整合
                 CALL cl_msg('Update O.K')
            WHEN 1  #呼叫 MDM 成功
                 CALL cl_msg('Update O.K, Update MDM O.K')
            WHEN 2  #呼叫 MDM 失敗
                 ROLLBACK WORK
                 CONTINUE WHILE
         END CASE

         # CALL aws_spccli_base()
         # 傳入參數: (1)TABLE名稱, (2)修改資料,
         #           (3)功能選項：insert(新增),update(修改),delete(刪除)
         CASE aws_spccli_base('pmc_file',base.TypeInfo.create(g_pmc),'update')
            WHEN 0  #無與 SPC 整合
                 MESSAGE 'UPDATE O.K'
                 LET g_success = 'Y'                      #FUN-9A0056 add
                #COMMIT WORK                              #FUN-9A0056 mark
            WHEN 1  #呼叫 SPC 成功
                 MESSAGE 'UPDATE O.K. UPDATE SPC O.K'
                 LET g_success = 'Y'                      #FUN-9A0056 add
                #COMMIT WORK                              #FUN-9A0056 mark
            WHEN 2  #呼叫 SPC 失敗
                 LET g_success = 'N'                      #FUN-9A0056 add
                #ROLLBACK WORK                            #FUN-9A0056 mark
                #BEGIN WORK                               #FUN-9A0056 mark
                #CONTINUE WHILE                           #FUN-9A0056 mark
         END CASE

        #FUN-9A0056 add str ------
        #與MES整合且狀況為:確認 則傳送MES
         IF g_success = 'Y' AND g_aza.aza90 MATCHES "[Yy]" AND g_pmc.pmc05='1' THEN
           CALL i600_mes('update',g_pmc.pmc01)
         END IF
        #FUN-9A0056 add end ------

        #No.FUN-820034  --Begin
        #vendor list refill
         CALL i600_list_fill()
        #No.FUN-820034  --End
      END IF
      ##FUN-680010

     #FUN-9A0056 add str---
      IF g_success = 'N' THEN
        ROLLBACK WORK
        BEGIN WORK
        LET g_success = 'Y'           #No.FUN-A30110
        CONTINUE WHILE
      ELSE
        COMMIT WORK
      END IF
     #FUN-9A0056 add end--

      CALL i600_show_pic() #FUN-690021 add
      EXIT WHILE
   END WHILE

   CLOSE i600_cl

  #COMMIT WORK      #FUN-680010
END FUNCTION

FUNCTION i600_x()
   DEFINE   l_cnt   LIKE type_file.num5,    #No.FUN-680136 SMALLINT
            l_chr   LIKE type_file.chr1    #No.FUN-680136 VARCHAR(1)

   IF s_shut(0) THEN RETURN END IF                #檢查權限
   IF g_pmc.pmc01 IS NULL THEN
      CALL cl_err('',-400,0)
      RETURN
   END IF
   #No.FUN-820034  --Begin
   IF NOT s_dc_ud_flag('5',g_pmc.pmc1920,g_plant,'u') THEN
      CALL cl_err(g_pmc.pmc1920,'aoo-045',1)
      RETURN
   END IF
   #No.FUN-820034  --End

   LET g_success = 'Y'                    #FUN-9A0056 add

   BEGIN WORK

   OPEN i600_cl USING g_pmc_rowid
   IF STATUS THEN
      CALL cl_err("OPEN i600_cl:", STATUS, 1)
      CLOSE i600_cl
      ROLLBACK WORK
      RETURN
   END IF

   FETCH i600_cl INTO g_pmc.*
   IF SQLCA.sqlcode THEN
      CALL cl_err(g_pmc.pmc01,SQLCA.sqlcode,0)
      RETURN
   END IF

  #IF g_pmc.pmc45 > 0 OR g_pmc.pmc46 > 0 AND g_pmc.pmcacti = "Y" THEN
  #   CALL cl_err('','mfg3378',0)
  #   RETURN
  #END IF

   DECLARE qq CURSOR FOR SELECT COUNT(*) FROM pmm_file
              WHERE pmm09 = g_pmc.pmc01 AND pmm25 IN ('X','0','1','2','S','R','W')   #MOD-A90025 add SRW
   OPEN qq
   FETCH qq INTO l_cnt
   #IF l_cnt > 0 AND g_pmc.pmcacti = "Y" THEN   #MOD-A90016
   IF l_cnt > 0 AND g_pmc.pmcacti <> "N" THEN   #MOD-A90016
      CALL cl_err('','mfg3380',0)
      RETURN
   END IF
   CLOSE qq

   CALL i600_show()
   IF cl_exp(0,0,g_pmc.pmcacti) THEN
      LET g_chr = g_pmc.pmcacti
     #FUN-690021-----mod-str---
     #IF g_pmc.pmcacti = 'Y' THEN
     #   SELECT COUNT(*) INTO l_cnt FROM pmc_file
     #  # WHERE pmc04 = g_pmc.pmc01
     #    WHERE pmc04 = g_pmc.pmc01
     #      AND pmc01 <> g_pmc.pmc01
     #   IF l_cnt > 0 THEN
     #      CALL cl_err(g_pmc.pmc01,'mfg3286',0)
     #      RETURN
     #   ELSE
     #      LET g_pmc.pmcacti = 'N'
     #   END IF
     #ELSE
     #    LET g_pmc.pmcacti = 'Y'
     #END IF
     SELECT COUNT(*) INTO l_cnt FROM pmc_file
      WHERE pmc04 = g_pmc.pmc01
        AND pmc01 <> g_pmc.pmc01
     CASE g_pmc.pmc05
       WHEN '0' #開立
            IF g_pmc.pmcacti='N' THEN
               LET g_pmc.pmcacti='P'
            ELSE
               LET g_pmc.pmcacti='N'
            END IF
       WHEN '1' #確認
            IF g_pmc.pmcacti='N' THEN
               LET g_pmc.pmcacti='Y'
            ELSE
               IF l_cnt > 0 THEN
                  CALL cl_err(g_pmc.pmc01,'mfg3286',1)
                  RETURN
               ELSE
                  LET g_pmc.pmcacti='N'
               END IF
            END IF
       WHEN '2' #留置
            IF g_pmc.pmcacti='N' THEN
               LET g_pmc.pmcacti='H'
            ELSE
               IF l_cnt > 0 THEN
                  CALL cl_err(g_pmc.pmc01,'mfg3286',1)
                  RETURN
               ELSE
                  LET g_pmc.pmcacti='N'
               END IF
            END IF
       WHEN '3' #停止交易
            IF g_pmc.pmcacti='N' THEN
               LET g_pmc.pmcacti='H'
            ELSE
               IF l_cnt > 0 THEN
                  CALL cl_err(g_pmc.pmc01,'mfg3286',1)
                  RETURN
               ELSE
                  LET g_pmc.pmcacti='N'
               END IF
            END IF
      END CASE
     #FUN-690021-----mod-end---

      UPDATE pmc_file
         SET pmcacti = g_pmc.pmcacti,
             pmcmodu = g_user, pmcdate = g_today
       WHERE ROWID = g_pmc_rowid
      IF SQLCA.SQLERRD[3] = 0 THEN
         #CALL cl_err(g_pmc.pmc01,SQLCA.sqlcode,0)   #No.FUN-660129
          CALL cl_err3("upd","pmc_file","","",SQLCA.sqlcode,"","",1)  #No.FUN-660129
          LET g_pmc.pmcacti = g_chr
          LET g_success = 'N'                                         #FUN-9A0056 add
      END IF

     #FUN-9A0056 add begin --------------
     #當已確認資料從有效變無效,傳送刪除給MES;反之,則傳送新增給MES
      IF g_aza.aza90 MATCHES "[Yy]" AND g_success = 'Y' THEN
        CASE
          WHEN g_pmc.pmc05 ='1' AND g_pmc.pmcacti='N'
            CALL i600_mes('delete',g_pmc.pmc01)
          WHEN g_pmc.pmc05 ='1' AND g_pmc.pmcacti='Y'
            CALL i600_mes('insert',g_pmc.pmc01)
        END CASE
      END IF
     #FUN-9A0056 add end ----------------

      DISPLAY BY NAME g_pmc.pmcacti
      CALL i600_list_fill()  #No.FUN-820034
   END IF

   CLOSE i600_cl

  #COMMIT WORK               #FUN-9A0056 mark

  #FUN-9A0056 add begin-----
   IF g_success = 'N' THEN
      ROLLBACK WORK
      RETURN
   ELSE
      COMMIT WORK
   END IF
  #FUN-9A0056 add end ------

   SELECT * INTO g_pmc.* FROM pmc_file where ROWID=g_pmc_rowid #FUN-690021--add
   CALL i600_show()                                            #FUN-690021--add
END FUNCTION

FUNCTION i600_r()
   DEFINE   l_cnt   LIKE type_file.num5,    #No.FUN-680136 SMALLINT
            l_chr   LIKE type_file.chr1    #No.FUN-680136 VARCHAR(1)

   IF s_shut(0) THEN RETURN END IF                #檢查權限
   IF g_pmc.pmc01 IS NULL THEN
      CALL cl_err('',-400,0)
      RETURN
   END IF
   SELECT * INTO g_pmc.* FROM pmc_file
    WHERE pmc01=g_pmc.pmc01
   #No:TQC-950066 add --begin
   IF g_pmc.pmcacti = 'N' THEN
      CALL cl_err('','abm-950',0)
      RETURN
   END IF
   #No:TQC-950066 add --end

   #No:TQC-960321 add --begin
   IF g_pmc.pmc05 = '1' THEN
      CALL cl_err('','apm-067',0)
      RETURN
   END IF
   #No:TQC-960321 add --end

  #No.FUN-820034  --Begin
   IF NOT s_dc_ud_flag('5',g_pmc.pmc1920,g_plant,'r') THEN
      CALL cl_err(g_pmc.pmc1920,'aoo-044',1)
      RETURN
   END IF
  #No.FUN-820034  --End
   {
   IF g_pmc.pmc45 > 0 OR g_pmc.pmc46 > 0 AND g_pmc.pmcacti = "Y" THEN
      CALL cl_err('','mfg3379',0)
      RETURN
   END IF
   }
   DECLARE rr CURSOR FOR SELECT COUNT(*) FROM pmm_file
              WHERE pmm09 = g_pmc.pmc01 AND pmm25 IN ('X','0','1','2','S','R','W')   #MOD-A90025 add SRW
   OPEN rr
   FETCH rr INTO l_cnt
   #IF l_cnt > 0 AND g_pmc.pmcacti = "Y" THEN   #MOD-A90016
   IF l_cnt > 0 AND g_pmc.pmcacti <> "N" THEN   #MOD-A90016
      CALL cl_err('','mfg3381',0)
      RETURN
   END IF
   CLOSE rr

   BEGIN WORK

   OPEN i600_cl USING g_pmc_rowid
   IF STATUS THEN
      CALL cl_err("OPEN i600_cl:", STATUS, 1)
      CLOSE i600_cl
      ROLLBACK WORK
      RETURN
   END IF
   FETCH i600_cl INTO g_pmc.*
   IF SQLCA.sqlcode THEN
      CALL cl_err(g_pmc.pmc01,SQLCA.sqlcode,0)
      RETURN
   END IF
   CALL i600_show()
   IF cl_delete() THEN
       INITIALIZE g_doc.* TO NULL          #No.FUN-9B0098 10/02/24
       LET g_doc.column1 = "pmc01"         #No.FUN-9B0098 10/02/24
       LET g_doc.value1 = g_pmc.pmc01      #No.FUN-9B0098 10/02/24
       CALL cl_del_doc()                                        #No.FUN-9B0098 10/02/24
      #TQC-6B0103---start---
      IF (NOT cl_del_itemname("pmc_file","pmc03", g_pmc.pmc01)) THEN
         ROLLBACK WORK
         RETURN
      END IF
      #TQC-6B0103---end---
      #NO:FUN-680010  加SQL判別
      DELETE FROM pmc_file WHERE pmc01 = g_pmc.pmc01
      IF SQLCA.SQLERRD[3]=0 THEN
         CALL cl_err3("del","pmc_file",g_pmc.pmc01,"",SQLCA.sqlcode,"","",1)
         ROLLBACK WORK
         RETURN
      END IF
      DELETE FROM pnp_file WHERE pnp01 = g_pmc.pmc01 #No.7388
      IF SQLCA.sqlcode THEN
         CALL cl_err3("del","pnp_file",g_pmc.pmc01,"",SQLCA.sqlcode,"","",1)
         ROLLBACK WORK
         RETURN
      END IF
      DELETE FROM pmf_file WHERE pmf01 = g_pmc.pmc01 #No.7388
      IF SQLCA.sqlcode THEN
         CALL cl_err3("del","pmf_file",g_pmc.pmc01,"",SQLCA.sqlcode,"","",1)
         ROLLBACK WORK
         RETURN
      END IF
      DELETE FROM pmg_file WHERE pmg01 = g_pmc.pmc01 #No.7388
      IF SQLCA.sqlcode THEN
         CALL cl_err3("del","pmg_file",g_pmc.pmc01,"",SQLCA.sqlcode,"","",1)
         ROLLBACK WORK
         RETURN
      END IF
      DELETE FROM pmd_file WHERE pmd01 = g_pmc.pmc01 #No.7388
      IF SQLCA.sqlcode THEN
         CALL cl_err3("del","pmd_file",g_pmc.pmc01,"",SQLCA.sqlcode,"","",1)
         ROLLBACK WORK
         RETURN
      END IF
      #NO:FUN-680010

      LET g_msg=TIME
      INSERT INTO azo_file(azo01,azo02,azo03,azo04,azo05,azo06)
        VALUES ('apmi600',g_user,g_today,g_msg,g_pmc.pmc01,'delete')
      #NO:FUN-680010
      IF SQLCA.sqlcode THEN
         CALL cl_err3("ins","azo_file","apmi600","",SQLCA.sqlcode,"","",1)
         ROLLBACK WORK
         RETURN
      END IF

      #FUN-860036
      #CASE aws_mdmcli('vendor','delete',base.TypeInfo.create(g_pmc),'','','','') #FUN-870166  #FUN-890113
      #CASE aws_mdmdata('pmc_file','delete',g_pmc.pmc01,base.TypeInfo.create(g_pmc),'CreateVendorData') #FUN-870166
      #   WHEN 0  #無與 MDM 整合
      #        CALL cl_msg('Delete O.K')
      #   WHEN 1  #呼叫 MDM 成功
      #        CALL cl_msg('Delete O.K, Delete MDM O.K')
      #   WHEN 2  #呼叫 MDM 失敗
      #        ROLLBACK WORK
      #        RETURN
      #END CASE

      # CALL aws_spccli_base()
      # 傳入參數: (1)TABLE名稱, (2)刪除資料,
      #           (3)功能選項：insert(新增),update(修改),delete(刪除)
      CASE aws_spccli_base('pmc_file',base.TypeInfo.create(g_pmc),'delete')
         WHEN 0  #無與 SPC 整合
              MESSAGE 'DELETE O.K'
         WHEN 1  #呼叫 SPC 成功
              MESSAGE 'DELETE O.K, DELETE SPC O.K'
         WHEN 2  #呼叫 SPC 失敗
              ROLLBACK WORK
              RETURN
      END CASE
      #NO:FUN-680010

      CLEAR FORM
      OPEN i600_count
      FETCH i600_count INTO g_row_count
      DISPLAY g_row_count TO FORMONLY.cnt
      OPEN i600_cs
      IF g_curs_index = g_row_count + 1 THEN
         LET g_jump = g_row_count
         CALL i600_fetch('L')
      ELSE
         LET g_jump = g_curs_index
         LET g_no_ask = TRUE
         CALL i600_fetch('/')
      END IF
      CALL i600_list_fill()  #No.FUN-820034
   END IF
   CLOSE i600_cl
   COMMIT WORK
END FUNCTION

FUNCTION i600_copy()
   DEFINE   l_n               LIKE type_file.num5,    #No.FUN-680136 SMALLINT
            l_pmc             RECORD LIKE pmc_file.*,
            l_pmg             RECORD LIKE pmg_file.*, #MOD-530492
            l_newno,l_oldno   LIKE pmc_file.pmc01

   IF s_shut(0) THEN RETURN END IF                #檢查權限
   IF g_pmc.pmc01 IS NULL THEN
      CALL cl_err('',-400,0)
      RETURN
   END IF
   DECLARE ins_pmg_cur CURSOR FOR
   SELECT *
      FROM pmg_file            #MOD-530492
     WHERE pmg01 = g_pmc.pmc01 #MOD-530492
   LET l_pmc.*=g_pmc.*
   LET g_before_input_done = FALSE
   CALL i600_set_entry('a')
   LET g_before_input_done = TRUE

   INPUT l_newno FROM pmc01
      AFTER FIELD pmc01
         IF l_newno IS NULL THEN
             NEXT FIELD pmc01
         END IF
         SELECT COUNT(*) INTO g_cnt FROM pmc_file
          WHERE pmc01 = l_newno
         IF g_cnt > 0 THEN
             CALL cl_err(l_newno,'apm-036',0)   #No:MOD-570066
            NEXT FIELD pmc01
         END IF
         #No.FUN-820034  --Begin
         #check pmc01 value by aooi601 setting
         CALL s_field_chk(l_newno,'5',g_plant,'pmc01') RETURNING g_flag2
         IF g_flag2 = '0' THEN
            CALL cl_err(l_newno,'aoo-043',1)
            NEXT FIELD pmc01
         END IF
         #No.FUN-820034  --End
         #No.FUN-A30110  --Begin
         CALL s_check_pmc01_occ01(l_newno,g_pmc.pmc03,g_dbs,'1','N')
              RETURNING g_flag,g_flag1
         #No.FUN-A30110  --End
      ON IDLE g_idle_seconds
         CALL cl_on_idle()
         CONTINUE INPUT

      ON ACTION about         #MOD-4C0121
         CALL cl_about()      #MOD-4C0121

      ON ACTION help          #MOD-4C0121
         CALL cl_show_help()  #MOD-4C0121

      ON ACTION controlg      #MOD-4C0121
         CALL cl_cmdask()     #MOD-4C0121

   END INPUT

   IF INT_FLAG THEN
      LET INT_FLAG = 0
      DISPLAY BY NAME g_pmc.pmc01
      RETURN
   END IF
   LET l_pmc.pmc01=l_newno     #資料鍵值
   LET l_pmc.pmc03=NULL        #廠商簡稱    #MOD-4C0099
   #MOD-530432(加包CASE)
   CASE l_pmc.pmc30
      WHEN '1'
            LET l_pmc.pmc04=NULL        #付款廠商編號#MOD-4C0099
            LET l_pmc.pmc901=l_pmc.pmc01#出貨廠商    #MOD-4C0099
      WHEN '2'
            LET l_pmc.pmc04=l_pmc.pmc01 #付款廠商編號#MOD-4C0099
            LET l_pmc.pmc901=NULL       #出貨廠商    #MOD-4C0099
      WHEN '3'
            LET l_pmc.pmc04=l_pmc.pmc01 #付款廠商編號#MOD-4C0099
            LET l_pmc.pmc901=l_pmc.pmc01#出貨廠商    #MOD-4C0099
   END CASE
   #MOD-530432(end)

   LET l_pmc.pmc24=NULL        #統一統號    #MOD-4C0099
   LET l_pmc.pmc45=0
   LET l_pmc.pmc46=0
   LET l_pmc.pmcuser=g_user    #資料所有者
   LET l_pmc.pmcgrup=g_grup    #資料所有者所屬群
   LET l_pmc.pmcmodu=NULL      #資料修改日期
   LET l_pmc.pmcdate=g_today   #資料建立日期
  #LET l_pmc.pmcacti='Y'       #有效資料     #FUN-690021
   LET l_pmc.pmcacti='P'       #P:Processing #FUN-690021
   LET l_pmc.pmc05  ='0'       #0:開立       #FUN-690021
   LET l_pmc.pmc1920 = g_plant #No.FUN-820034
   LET l_pmc.pmc1921 = 0       #No.FUN-820034

   BEGIN WORK    #NO:FUN-680010

   INSERT INTO pmc_file VALUES(l_pmc.*)
   IF SQLCA.sqlcode THEN
      #CALL cl_err('pmc_file',SQLCA.sqlcode,0) #MOD-530492   #No.FUN-660129
      CALL cl_err3("ins","pmc_file","","",SQLCA.sqlcode,"","pmc_file",1)  #No.FUN-660129
      ROLLBACK WORK     #FUN-680010
   ELSE
      #MOD-530492
      LET g_success = 'Y'
      FOREACH ins_pmg_cur INTO l_pmg.*
         LET l_pmg.pmg01=l_newno     #資料鍵值
         INSERT INTO pmg_file VALUES(l_pmg.*)
         IF SQLCA.sqlcode THEN
            #CALL cl_err('pmg_file',SQLCA.sqlcode,0)   #No.FUN-660129
            CALL cl_err3("ins","pmg_file","","",SQLCA.sqlcode,"","pmg_file",1)  #No.FUN-660129
            LET g_success = 'N'
            ROLLBACK WORK    #FUN-680010
            EXIT FOREACH
         END IF
      END FOREACH
      IF g_success = 'Y' THEN
         #MESSAGE 'ROW(',l_newno,') O.K'  #FUN-680010
         LET l_oldno = g_pmc.pmc01
         SELECT ROWID,pmc_file.* INTO g_pmc_rowid,g_pmc.* FROM pmc_file
                        WHERE pmc01 = l_newno
         CALL i600_u()

         ##FUN-680010
         IF g_pmc.pmc24 IS NOT NULL THEN   ##從下面搬上來
            DELETE FROM apl_file WHERE apl01 = g_pmc.pmc24                                  #MOD-4B0007
            #加SQL判別
            IF SQLCA.sqlcode THEN
               CALL cl_err3("del","apl_file",g_pmc.pmc24,"",SQLCA.sqlcode,"","",1)
               ROLLBACK WORK    #FUN-680010
               RETURN           #FUN-680010
            END IF
            INSERT INTO apl_file(apl01,apl02,apl021,apl03)                                  #MOD-4B0007
                 VALUES(g_pmc.pmc24,g_pmc.pmc081,g_pmc.pmc082,g_pmc.pmc091)        #MOD-4B0007
            IF SQLCA.sqlcode THEN
               CALL cl_err3("ins","apl_file",g_pmc.pmc24,"",SQLCA.sqlcode,"","",1)
               ROLLBACK WORK    #FUN-680010
               RETURN           #FUN-680010
            END IF
         END IF

         #FUN-860036
         #CASE aws_mdmcli('vendor','insert',base.TypeInfo.create(g_pmc),'','','','') #FUN-870166
         CASE aws_mdmdata('pmc_file','insert',g_pmc.pmc01,base.TypeInfo.create(g_pmc),'CreateVendorData') #FUN-870166
            WHEN 0  #無與 MDM 整合
                 CALL cl_msg('INSERT O.K')
            WHEN 1  #呼叫 MDM 成功
                 CALL cl_msg('INSERT O.K, INSERT MDM O.K')
            WHEN 2  #呼叫 MDM 失敗
                 ROLLBACK WORK
                 LET g_success='N'
         END CASE

         # CALL aws_spccli_base()
         # 傳入參數: (1)TABLE名稱, (2)新增資料,
         #           (3)功能選項：insert(新增),update(修改),delete(刪除)
         IF g_success='Y' THEN  #FUN-860036
            CASE aws_spccli_base('pmc_file',base.TypeInfo.create(g_pmc),'insert')
               WHEN 0  #無與 SPC 整合
                    MESSAGE 'INSERT O.K'
                    COMMIT WORK
               WHEN 1  #呼叫 SPC 成功
                    MESSAGE 'INSERT O.K, INSERT SPC O.K'
                    COMMIT WORK
               WHEN 2  #呼叫 SPC 失敗
                    ROLLBACK WORK
            END CASE
         END IF
         ##FUN-680010

         SELECT ROWID,pmc_file.* INTO g_pmc_rowid,g_pmc.* FROM pmc_file
                        WHERE pmc01 = l_oldno
         #FUN-680010
         #IF l_pmc.pmc24 IS NOT NULL THEN                    #MOD-530492 將此段移至此較合理
         #    DELETE FROM apl_file WHERE apl01 = l_pmc.pmc24                                  #MOD-4B0007
         #    INSERT INTO apl_file(apl01,apl02,apl021,apl03)                                  #MOD-4B0007
         #                  VALUES(l_pmc.pmc24,l_pmc.pmc081,l_pmc.pmc082,l_pmc.pmc091)        #MOD-4B0007
         #END IF
         #FUN-680010
      END IF
       #MOD-530492(end)
   END IF
   CALL i600_show()
END FUNCTION

FUNCTION i600_2()
   DEFINE   l_pnp        DYNAMIC ARRAY OF RECORD
	                 pnp02   LIKE pnp_file.pnp02,
	                 pnp03   LIKE pnp_file.pnp03,
	                 occ02   LIKE occ_file.occ02
	                 END RECORD,
            l_pnp02_t    LIKE pnp_file.pnp02,
            l_pnp03_t    LIKE pnp_file.pnp03,
            l_n          LIKE type_file.num5,    #No.FUN-680136 SMALLINT
            i,l_i        LIKE type_file.num5,    #No.FUN-680136 SMALLINT
            l_ac         LIKE type_file.num5,    #No.FUN-680136 SMALLINT
            l_allow_insert  LIKE type_file.chr1,    # Prog. Version..: '5.10.16-10.10.14(01)  #可新增否
            l_allow_delete  LIKE type_file.chr1     # Prog. Version..: '5.10.16-10.10.14(01)  #可刪除否

  #No.FUN-820034  --Begin
   IF NOT s_dc_ud_flag('5',g_pmc.pmc1920,g_plant,'u') THEN
      CALL cl_err(g_pmc.pmc1920,'aoo-045',1)
      RETURN
   END IF
  #No.FUN-820034  --End
   OPEN WINDOW i604_w WITH FORM "apm/42f/apmi604"
       ATTRIBUTE (STYLE = g_win_style CLIPPED) #No:FUN-580092 HCN

   CALL cl_ui_locale("apmi604")

   DECLARE i600_2_c CURSOR FOR
      SELECT pnp02,pnp03 FROM pnp_file
       WHERE pnp01=g_pmc.pmc01

   CALL l_pnp.clear()
   LET i = 1
   LET l_i = 0
   FOREACH i600_2_c INTO l_pnp[i].*
      IF STATUS THEN CALL cl_err('foreach pnp',STATUS,0) EXIT FOREACH END IF
      SELECT occ02 INTO l_pnp[i].occ02 FROM occ_file
       WHERE occ01=l_pnp[i].pnp03
      LET i = i + 1
   END FOREACH

   CALL l_pnp.deleteElement(i)

   LET l_i=i - 1       #    DISPLAY i TO cn2

   LET l_allow_insert = cl_detail_input_auth('insert')
   LET l_allow_delete = cl_detail_input_auth('delete')
   INPUT ARRAY l_pnp WITHOUT DEFAULTS FROM s_pnp.*
      ATTRIBUTE (COUNT=l_i,MAXCOUNT=g_max_rec,UNBUFFERED,
                 INSERT ROW = l_allow_insert,DELETE ROW=l_allow_delete ,APPEND ROW=l_allow_insert)

         BEFORE INPUT
            IF l_i != 0 THEN
               CALL fgl_set_arr_curr(l_ac)
            END IF

         BEFORE ROW
            LET l_ac=ARR_CURR()
            LET l_pnp02_t = l_pnp[l_ac].pnp02
            LET l_pnp03_t = l_pnp[l_ac].pnp03
            CALL cl_show_fld_cont()                    #FUN-590083

         BEFORE FIELD pnp03
            IF NOT cl_null(l_pnp[l_ac].pnp02) THEN
               LET g_errno=' '
               CALL i600_azp(l_pnp[l_ac].pnp02)
               IF NOT cl_null(g_errno) THEN
                  CALL cl_err('',g_errno,0)
                  NEXT FIELD pnp02
               END IF
            END IF

         AFTER FIELD pnp03
            LET g_errno=' '
            IF NOT cl_null(l_pnp[l_ac].pnp03) THEN
               CALL i600_occ(l_pnp[l_ac].pnp03) RETURNING l_pnp[l_ac].occ02
               IF NOT cl_null(g_errno) THEN
                  CALL cl_err('',g_errno,0)
                  NEXT FIELD pnp03
               END IF
            END IF
            IF cl_null(l_pnp02_t) OR cl_null(l_pnp03_t) OR
               l_pnp[l_ac].pnp02 != l_pnp02_t OR l_pnp[l_ac].pnp03 != l_pnp03_t THEN
               SELECT COUNT(*) INTO l_n FROM pnp_file
                WHERE pnp01=g_pmc.pmc01
                  AND pnp02=l_pnp[l_ac].pnp02 AND pnp03=l_pnp[l_ac].pnp03
               IF l_n > 0 THEN
                  CALL cl_err('',-239,0)
                  NEXT FIELD pnp02
               END IF
            END IF

#           SELECT occ02 INTO l_pnp[l_ac].occ02 FROM occ_file
#            WHERE occ01=l_pnp[l_ac].pnp03
#           DISPLAY l_pnp[l_ac].occ02 TO occ02

         ON ACTION CONTROLP
            CASE
               WHEN INFIELD(pnp02)
#                 CALL q_azp(10,3,l_pnp[l_ac].pnp02) RETURNING l_pnp[l_ac].pnp02
#                 CALL FGL_DIALOG_SETBUFFER( l_pnp[l_ac].pnp02 )
                  CALL cl_init_qry_var()
                  LET g_qryparam.form = "q_azp"
                  LET g_qryparam.default1 = l_pnp[l_ac].pnp02
                  CALL cl_create_qry() RETURNING l_pnp[l_ac].pnp02
#                  CALL FGL_DIALOG_SETBUFFER( l_pnp[l_ac].pnp02 )
                  DISPLAY l_pnp[l_ac].pnp02 TO pnp02
                  CALL i600_azp(l_pnp[l_ac].pnp02)
                  IF NOT cl_null(g_errno) THEN
                     CALL cl_err('',g_errno,0) NEXT FIELD pnp02
                  END IF
                  NEXT FIELD pnp02
               WHEN INFIELD(pnp03)
#                 CALL q_occ(0,0,l_pnp[l_ac].pnp03) RETURNING l_pnp[l_ac].pnp03
#                 CALL FGL_DIALOG_SETBUFFER( l_pnp[l_ac].pnp03 )
                  CALL cl_init_qry_var()
                  LET g_qryparam.form = "q_occ"
                  LET g_qryparam.default1 = l_pnp[l_ac].pnp03
                  CALL cl_create_qry() RETURNING l_pnp[l_ac].pnp03
#                  CALL FGL_DIALOG_SETBUFFER( l_pnp[l_ac].pnp03 )
                  DISPLAY l_pnp[l_ac].pnp03 TO pnp03
                  CALL i600_occ(l_pnp[l_ac].pnp03) RETURNING l_pnp[l_ac].occ02
                  IF NOT cl_null(g_errno) THEN
                     CALL cl_err('',g_errno,0)
                  END IF
                  NEXT FIELD pnp03
            END CASE

         ON IDLE g_idle_seconds
            CALL cl_on_idle()
            CONTINUE INPUT

      ON ACTION about         #MOD-4C0121
         CALL cl_about()      #MOD-4C0121

      ON ACTION help          #MOD-4C0121
         CALL cl_show_help()  #MOD-4C0121

      ON ACTION controlg      #MOD-4C0121
         CALL cl_cmdask()     #MOD-4C0121


   END INPUT
   IF INT_FLAG THEN
      LET INT_FLAG = 0
      CALL cl_err('',9001,0)
      CLOSE WINDOW i604_w
      RETURN
   END IF

   BEGIN WORK

   LET g_success ='Y'

   DELETE FROM pnp_file WHERE pnp01 = g_pmc.pmc01
   FOR i = 1 TO l_pnp.getLength()
      IF cl_null(l_pnp[i].pnp02) THEN CONTINUE FOR END IF
      INSERT INTO pnp_file(pnp01,pnp02,pnp03,pnp04,pnp05,
                            pnpacti,pnpuser,pnpgrup,pnpmodu,pnpdate) #No.MOD-470041
      VALUES(g_pmc.pmc01,l_pnp[i].pnp02,l_pnp[i].pnp03,'','',
             'Y',g_user,g_grup,g_user,g_today)
      IF SQLCA.sqlcode THEN
#        CALL cl_err('ins pnp:',SQLCA.sqlcode,1)   #No.FUN-660129
         CALL cl_err3("ins","pnp_file","","",SQLCA.sqlcode,"","ins pnp:",1)  #No.FUN-660129
         LET g_success = 'N'
         EXIT FOR
      END IF

   END FOR

   IF g_success='Y' THEN
      COMMIT WORK
   ELSE
      ROLLBACK WORK
   END IF

   CLOSE WINDOW i604_w                #結束畫面

END FUNCTION

FUNCTION i600_pmc901(p_cmd)
   DEFINE   l_pmcacti LIKE pmc_file.pmcacti #MOD-530531
   DEFINE   l_pmc03   LIKE pmc_file.pmc03,
            p_cmd     LIKE type_file.chr1    #No.FUN-680136 VARCHAR(1)

    LET g_errno = " "
    IF g_pmc.pmc901 = g_pmc.pmc01 AND NOT cl_null(g_pmc.pmc901) THEN
       LET l_pmc03 = g_pmc.pmc03
    ELSE
        SELECT pmc03,pmcacti INTO l_pmc03,l_pmcacti FROM pmc_file  #MOD-530531
        WHERE pmc01=g_pmc.pmc901
       CASE
         WHEN SQLCA.SQLCODE = 100 LET g_errno = 'aap-000'
                                  LET l_pmc03 = NULL
         WHEN l_pmcacti='N'             LET g_errno = '9028' #MOD-530531
         WHEN l_pmcacti MATCHES '[PH]'  LET g_errno = '9038' #FUN-690024 add
         OTHERWISE                LET g_errno = SQLCA.SQLCODE USING '-------'
       END CASE
    END IF
    IF cl_null(g_errno) OR p_cmd = 'd' THEN
       DISPLAY l_pmc03 TO pmc03_e
    END IF

END FUNCTION

FUNCTION i600_azp(p_azp01)
   DEFINE   l_azp01   LIKE azp_file.azp01,
            p_azp01   LIKE azp_file.azp01

   LET g_errno = " "
   SELECT azp01 INTO l_azp01 FROM azp_file
    WHERE azp01=p_azp01
   CASE
      WHEN SQLCA.SQLCODE = 100 LET g_errno = 'apm-277'
                               LET l_azp01 = NULL
      OTHERWISE                LET g_errno = SQLCA.SQLCODE USING '-------'
   END CASE

END FUNCTION

FUNCTION i600_occ(p_occ01)
   DEFINE   p_cmd	LIKE type_file.chr1,    #No.FUN-680136 VARCHAR(1)
            p_occ01     LIKE occ_file.occ01,		#客戶代號
            l_occ02     LIKE occ_file.occ02,		#客戶簡稱
            l_occacti   LIKE occ_file.occacti 		#有效碼

   LET g_errno = ''
   SELECT occ02,occacti INTO l_occ02,l_occacti
     FROM occ_file WHERE occ01= p_occ01
  #CASE WHEN SQLCA.SQLCODE = 100  LET g_errno = 'mfg3029'    #TQC-970249
   CASE WHEN SQLCA.SQLCODE = 100  LET g_errno = 'aem-041'   #TQC-970249
                                  LET l_occ02   = NULL
                                  LET l_occacti = NULL
        WHEN l_occacti='N' LET g_errno = '9028'
        WHEN l_occacti MATCHES '[PH]'   LET g_errno = '9038'   #FUN-690023 add
        OTHERWISE          LET g_errno = SQLCA.SQLCODE USING '-------'
   END CASE
   RETURN l_occ02
END FUNCTION

FUNCTION i600_out()
   DEFINE   l_i      LIKE type_file.num5,    #No.FUN-680136 SMALLINT
            sr       RECORD LIKE pmc_file.*,
            l_pmf02  LIKE pmf_file.pmf02,
            l_pmf03  LIKE pmf_file.pmf03,
            l_pmf08  LIKE pmf_file.pmf08,
            l_pmf09  LIKE pmf_file.pmf09,
            l_nmt02  LIKE nmt_file.nmt02,
            l_name   LIKE type_file.chr20,                 # External(Disk) file name  #No.FUN-680136 VARCHAR(20)
            l_za05   LIKE type_file.chr1000,               #  #No.FUN-680136 VARCHAR(40)
            l_chr    LIKE type_file.chr1    #No.FUN-680136 VARCHAR(1)

   IF cl_null(g_wc) THEN LET g_wc=" pmc01='",g_pmc.pmc01,"'" END IF
   LET g_choice = 'N'

   OPEN WINDOW i600_ww WITH FORM "apm/42f/apmi600w"
       ATTRIBUTE (STYLE = g_win_style CLIPPED) #No:FUN-580092 HCN

    CALL cl_ui_locale("apmi600w")


   INPUT g_choice FROM choice
   #TQC-860019-beign-add
     ON IDLE g_idle_seconds
        CALL cl_on_idle()
        CONTINUE INPUT
     END INPUT
   #TQC-860019-end-add

   #MOD-740330.........begin
   IF INT_FLAG THEN
      LET INT_FLAG = 0
      CLOSE WINDOW i600_ww
      RETURN
   END IF
   #MOD-740330.........end
   CLOSE WINDOW i600_ww

   CALL cl_wait()
#  CALL cl_outnam('apmi600') RETURNING l_name    #No:FUN-840052
   CALL cl_del_data(l_table)                     #No:FUN-840052
   SELECT zo02 INTO g_company FROM zo_file WHERE zo01 = g_lang
   LET g_sql = "SELECT * FROM pmc_file ",         # 組合出 SQL 指令
             " WHERE ",g_wc CLIPPED
  PREPARE i600_p1 FROM g_sql                # RUNTIME 編譯
  DECLARE i600_co                         # CURSOR
      CURSOR FOR i600_p1

#  START REPORT i600_rep TO l_name               #No:FUN-840052

  FOREACH i600_co INTO sr.*
      IF SQLCA.sqlcode THEN
          CALL cl_err('foreach:',SQLCA.sqlcode,1)   #No.FUN-660129
          EXIT FOREACH
     #ELSE  #TQC-6C0060 mark
     #    #FUN-590083
     #    IF g_aza.aza44 = "Y" THEN
     #       CALL cl_itemname_by_lang("pmc_file","pmc03",g_pmc.pmc01,g_lang,g_pmc.pmc03) RETURNING g_pmc.pmc03
     #    END IF
      END IF
      SELECT pmf02,pmf03,pmf08,pmf09 INTO l_pmf02,l_pmf03,l_pmf08,l_pmf09
      FROM pmf_file
      WHERE pmf01=sr.pmc01
      SELECT nmt02 INTO l_nmt02 FROM nmt_file WHERE nmt01= l_pmf02
#No:FUN-840052---Begin
#      OUTPUT TO REPORT i600_rep(sr.*)
       EXECUTE insert_prep USING  sr.pmcacti, sr.pmc01, sr.pmc03, sr.pmc081, sr.pmc24, sr.pmcud02,
                                  sr.pmc10,  sr.pmc11, sr.pmc091, sr.pmc52,l_pmf02,l_pmf03,
                                  l_pmf08,l_pmf09,l_nmt02
   END FOREACH

#  FINISH REPORT i600_rep

   CLOSE i600_co
   ERROR ""
#  CALL cl_prt(l_name,' ','1',g_len)
    IF g_zz05 = 'Y' THEN
       CALL cl_wcchp(g_wc,'      pmc01, pmc03, pmc081, pmc082, pmc24, pmc903, pmc14, pmc05, pmc02,
      pmc30, pmc04, pmc901,
      pmc17, pmc49, pmc22 , pmc47, pmc54,  pmc911,
      pmc48, pmc902,pmc27 , pmc50, pmc51,  pmc28, pmc912,
      pmc07, pmc904, pmc091, pmc092, pmc093, pmc094, pmc095,
      pmc908,pmc07, pmc06, pmc904, pmc091, pmc092, pmc093, pmc094, pmc095,
      pmc52, pmc53, pmc15, pmc16,
      pmc56, pmc55, pmc57, pmc10 , pmc11, pmc12,       #FUN-970022 ADD pmc57
      pmc1917,pmc1918,pmc1919,pmc1912,pmc1913,
      pmc1914,pmc1915,pmc1916,
      pmcud01,pmcud02,pmcud03,pmcud04,pmcud05,
      pmcud06,pmcud07,pmcud08,pmcud09,pmcud10,
      pmcud11,pmcud12,pmcud13,pmcud14,pmcud15,
      pmcuser,pmcgrup,pmcmodu,pmcdate,pmcacti')
            RETURNING g_wc
    END IF
   LET g_str = g_wc,";",g_choice
   LET l_sql = "SELECT * FROM ", g_cr_db_str CLIPPED, l_table CLIPPED
   CALL cl_prt_cs3('apmi600','apmi600',l_sql,g_str)
#No:FUN-840052---End

END FUNCTION

#No:FUN-840052---Begin
#REPORT i600_rep(sr)
#   DEFINE
#       l_trailer_sw    LIKE type_file.chr1,   #No.FUN-680136 VARCHAR(1)
#       sr RECORD LIKE pmc_file.*,
#       l_pmc03   LIKE pmc_file.pmc03,
#       l_chr           LIKE type_file.chr1    #No.FUN-680136 VARCHAR(1)
#
#   OUTPUT
#      TOP MARGIN g_top_margin
#      LEFT MARGIN g_left_margin
#      BOTTOM MARGIN g_bottom_margin
#      PAGE LENGTH g_page_line
#
#   ORDER BY sr.pmc01,sr.pmc04
#
#   FORMAT
#       PAGE HEADER
#           PRINT COLUMN ((g_len-FGL_WIDTH(g_company CLIPPED))/2)+1 , g_company CLIPPED
#           PRINT COLUMN ((g_len-FGL_WIDTH(g_x[1]))/2)+1 ,g_x[1]
#           LET g_pageno = g_pageno + 1
#           LET pageno_total = PAGENO USING '<<<',"/pageno"
#           PRINT g_head CLIPPED,pageno_total
#           PRINT
#           PRINT g_dash
#           #PRINT g_x[31],g_x[32],g_x[33],g_x[34],g_x[35],g_x[36],g_x[37],g_x[38]   #FUN-550091
#           PRINT g_x[31],g_x[32],g_x[33],g_x[34],g_x[35],g_x[36],g_x[39],g_x[37],g_x[38]   #FUN-550091
#           PRINT g_dash1
#           LET l_trailer_sw = 'y'
#       ON EVERY ROW
#           IF sr.pmcacti = 'N' THEN
#               PRINT COLUMN g_c[31],'*';
#           ELSE
#                PRINT COLUMN g_c[31],' '; #MOD-530513
#           END IF
#           PRINT COLUMN g_c[32],sr.pmc01,
#                 COLUMN g_c[33],sr.pmc03,
#                 COLUMN g_c[34],sr.pmc30,
#                 COLUMN g_c[35],sr.pmc06,
#                 COLUMN g_c[36],sr.pmc07,
#                 COLUMN g_c[39],sr.pmc908,   #FUN-550091
#                 COLUMN g_c[37],sr.pmc10,
#                 COLUMN g_c[38],sr.pmc11
#           IF g_choice = 'Y' THEN
#              WHILE TRUE
#                  IF NOT cl_null(sr.pmc091) THEN
#                     PRINT COLUMN g_c[33],sr.pmc091 CLIPPED
#                  ELSE
#                     EXIT WHILE
#                  END IF
#                  IF NOT cl_null(sr.pmc092) THEN
#                     PRINT COLUMN g_c[33], sr.pmc092 CLIPPED
#                  ELSE
#                     EXIT WHILE
#                  END IF
#                  IF NOT cl_null(sr.pmc093) THEN
#                     PRINT COLUMN g_c[33], sr.pmc093 CLIPPED
#                  ELSE
#                     EXIT WHILE
#                  END IF
#                  IF NOT cl_null(sr.pmc094) THEN
#                     PRINT COLUMN g_c[33], sr.pmc094 CLIPPED
#                  ELSE
#                     EXIT WHILE
#                  END IF
#                  IF NOT cl_null(sr.pmc095) THEN
#                     PRINT COLUMN g_c[33], sr.pmc095 CLIPPED
#                  ELSE
#                     EXIT WHILE
#                  END IF
#                  EXIT WHILE
#              END WHILE
#              SKIP 1 LINE
#           END IF
#
#       ON LAST ROW
#           IF g_zz05 = 'Y'          # 80:70,140,210      132:120,240
#              THEN PRINT g_dash
##NO.TQC-630166 start--
##                   IF g_wc[001,070] > ' ' THEN
##       	       PRINT g_x[8] CLIPPED,g_wc[001,070] CLIPPED END IF
##                   IF g_wc[071,140] > ' ' THEN
##       	       PRINT COLUMN 10,     g_wc[071,140] CLIPPED END IF
##                   IF g_wc[141,210] > ' ' THEN
##       	       PRINT COLUMN 10,     g_wc[141,210] CLIPPED END IF
#                   CALL cl_prt_pos_wc(g_wc)
##NO.TQC-630166 end--
#           END IF
#           PRINT g_dash
#           LET l_trailer_sw = 'n'
#           PRINT g_x[4],g_x[5] CLIPPED, COLUMN (g_len-9), g_x[7] CLIPPED
#       PAGE TRAILER
#           IF l_trailer_sw = 'y' THEN
#               PRINT g_dash
#               PRINT g_x[4],g_x[5] CLIPPED, COLUMN (g_len-9), g_x[6] CLIPPED
#           ELSE
#               SKIP 2 LINE
#           END IF
#END REPORT
#No:FUN-840052---End

FUNCTION i600_ins_apl()
   DEFINE   l_apl   RECORD LIKE apl_file.*

   DECLARE i600_c1 CURSOR FOR
           #SELECT UNIQUE pmc24,pmc081,pmc091 from pmc_file            #MOD-4B0007
            SELECT UNIQUE pmc24,pmc081,pmc082,pmc091 from pmc_file     #MOD-4B0007
            WHERE pmc24 IS NOT NULL AND pmc24 <>' '
              AND pmc24 NOT In (SELECT apl01 FROM apl_file
                                  WHERE apl01 IS NOT NULL              #MOD-4B0007
                                    AND apl01 <> ' ')                  #MOD-4B0007
   FOREACH i600_c1 INTO l_apl.*
     #No.FUN-820034  --Begin
      IF NOT s_dc_ud_flag('5',g_pmc.pmc1920,g_plant,'r') THEN
         CALL cl_err(g_pmc.pmc1920,'aoo-044',1)
         RETURN
      END IF
     #No.FUN-820034  --End
      DELETE FROM apl_file WHERE apl01 = l_apl.apl01                  #MOD-4B0007
      INSERT INTO apl_file(apl01,apl02,apl021,apl03)                  #MOD-4B0007
             VALUES(l_apl.apl01,l_apl.apl02,l_apl.apl021,l_apl.apl03) #MOD-4B0007
     #INSERT INTO apl_file VALUES(l_apl.*)                            #MOD-4B0007
      DISPLAY l_apl.apl01,' ',STATUS
      MESSAGE 'INSERT apl_file Uniform#', l_apl.apl01,' OK!'                           #MOD-4B0007
      CALL ui.Interface.refresh()                                     #MOD-4B0007

   END FOREACH
END FUNCTION

FUNCTION i600_dbs() # Add By Carol for multiplant transfer 01/09/25
   DEFINE   l_ans       LIKE type_file.chr1,    #No.FUN-680136 VARCHAR(01)
            l_exit_sw   LIKE type_file.chr1,    #No.FUN-680136 VARCHAR(1)
            l_c,l_s,i   LIKE type_file.num5,    #No.FUN-680136 SMALLINT
            l_cnt       LIKE type_file.num5,    #No.FUN-680136 SMALLINT
            l_allow_insert  LIKE type_file.chr1,     # Prog. Version..: '5.10.16-10.10.14(01) #可新增否
            l_allow_delete  LIKE type_file.chr1     # Prog. Version..: '5.10.16-10.10.14(01)  #可刪除否

   IF s_shut(0) THEN RETURN END IF
   LET l_ans = ' '

  #MOD-480162
   OPEN WINDOW i600b_w WITH FORM "apm/42f/apmi600b"
       ATTRIBUTE (STYLE = g_win_style CLIPPED) #No:FUN-580092 HCN

   CALL cl_ui_locale("apmi600b")

   INPUT l_ans from FORMONLY.ans
     AFTER FIELD ans
        IF l_ans NOT MATCHES "[12]" THEN
           NEXT FIELD ans
        END IF

#FUN-560136-add
     ON IDLE g_idle_seconds
        CALL cl_on_idle()
        CONTINUE INPUT

     ON ACTION about
        CALL cl_about()

     ON ACTION help
        CALL cl_show_help()

     ON ACTION controlg
        CALL cl_cmdask()
#FUN-560136-end

   END INPUT

   IF INT_FLAG THEN
      LET INT_FLAG=0
      CLOSE WINDOW i600b_w
      RETURN
   END IF
   CLOSE WINDOW i600b_w

    #MOD-480162(end)

   OPEN WINDOW i600a_w WITH FORM "apm/42f/apmi600a"
       ATTRIBUTE (STYLE = g_win_style CLIPPED) #No:FUN-580092 HCN

    CALL cl_ui_locale("apmi600a")


   FOR i = 1 TO 20
       INITIALIZE tm.plant[i] TO NULL
       INITIALIZE tm.dbs[i] TO NULL
   END FOR

      LET i = 0
      INPUT ARRAY tm.plant WITHOUT DEFAULTS FROM s_plant.*
      ATTRIBUTE (COUNT=i,MAXCOUNT=g_max_rec,UNBUFFERED,
                 INSERT ROW = TRUE,DELETE ROW=TRUE,APPEND ROW=TRUE)

         BEFORE INPUT
            IF i != 0 THEN
               CALL fgl_set_arr_curr(l_c)
            END IF

         BEFORE FIELD plant
            LET l_c = ARR_CURR()

         AFTER FIELD plant
            IF NOT cl_null(tm.plant[l_c]) THEN
               IF g_plant = tm.plant[l_c] THEN
                  CALL cl_err(tm.plant[l_c],'mfg9186',1) NEXT FIELD plant
               END IF
               SELECT azp01 FROM azp_file WHERE azp01 = tm.plant[l_c]
               IF STATUS THEN
#                 CALL cl_err('sel azp',STATUS,1) #No.FUN-660129
                  CALL cl_err3("sel","azp_file","","",STATUS,"","sel azp",1) NEXT FIELD plant   #No.FUN-660129
               ELSE
                  SELECT azp03 INTO tm.dbs[l_c] FROM azp_file
                   WHERE azp01 = tm.plant[l_c]
                  IF cl_null(tm.dbs[l_c]) THEN
#                    CALL cl_err('sel azp',STATUS,1)   #No.FUN-660129
                     CALL cl_err3("sel","azp_file","","",STATUS,"","sel azp",1)  #No.FUN-660129
                     NEXT FIELD plant
                  END IF
               END IF
               LET g_success = 'Y'
               FOR i = 1 TO 20      # 檢查工廠/database是否重覆
                   IF cl_null(tm.plant[i]) OR i = l_c THEN CONTINUE FOR END IF
                   IF tm.plant[i] = tm.plant[l_c] THEN
                      CALL cl_err(tm.plant[l_c],'aom-492',1)
                      LET g_success = 'N'
                      EXIT FOR
                   END IF
                   IF tm.dbs[i] = tm.dbs[l_c] THEN
                      LET g_msg=tm.plant[l_c] CLIPPED,'/',tm.dbs[l_c] CLIPPED
                      CALL cl_err(g_msg,'mfg9184',1)
                      LET g_success = 'N'
                      EXIT FOR
                   END IF
               END FOR
               IF g_success = 'N' THEN NEXT FIELD plant END IF
               IF NOT s_chkdbs(g_user,tm.plant[l_c],g_rlang) THEN
                  NEXT FIELD plant
               END IF
            ELSE
               LET tm.dbs[l_c]=''
            END IF

         AFTER INPUT                    # 檢查至少輸入一個工廠
            IF INT_FLAG THEN EXIT INPUT END IF
            LET l_cnt = ARR_COUNT()
            FOR i = 1 TO l_cnt
               IF NOT cl_null(tm.plant[i]) THEN
                  EXIT INPUT
               ELSE
                  LET tm.dbs[i] = ''
               END IF
            END FOR
            IF i = l_cnt+1 THEN
               CALL cl_err('','aom-423',1)
               NEXT FIELD plant
            END IF

         ON ACTION CONTROLP
            CASE
               WHEN INFIELD(plant)  #工廠
                  CALL cl_init_qry_var()
                  LET g_qryparam.form = "q_azp"
                  LET g_qryparam.default1 = tm.plant[l_c]
                  CALL cl_create_qry() RETURNING tm.plant[l_c]
                   DISPLAY tm.plant[l_c] TO plant #No:8184 #BUG-480057  #No:MOD-490371
                  NEXT FIELD plant
               OTHERWISE EXIT CASE
            END CASE

          ON IDLE g_idle_seconds
             CALL cl_on_idle()
             CONTINUE INPUT

          ON ACTION about         #MOD-4C0121
             CALL cl_about()      #MOD-4C0121

          ON ACTION help          #MOD-4C0121
             CALL cl_show_help()  #MOD-4C0121

          ON ACTION controlg      #MOD-4C0121
             CALL cl_cmdask()     #MOD-4C0121


      END INPUT

      IF INT_FLAG THEN
         LET INT_FLAG=0
         CLOSE WINDOW i600a_w    #FUN-560136
         RETURN
      END IF

    CLOSE WINDOW i600a_w             #BUG-470505已加此行,MOD-480057不用加

   BEGIN WORK
   LET g_success='Y'
   IF l_ans = '1' THEN CALL i600_dbs_ins() END IF
   IF l_ans = '2' THEN CALL i600_dbs_upd() END IF
   IF g_success='Y' THEN
      COMMIT WORK
       CALL cl_err('','lib-485',1)    #TQC-7B0152
   ELSE
      ROLLBACK WORK
       CALL cl_err('','abm-020',1)    #MOD-480057
   END IF
    #CLOSE WINDOW i600a_w             #MOD-480057

END FUNCTION

FUNCTION i600_dbs_ins()
   DEFINE   l_exit_sw   LIKE type_file.chr1,     #No.FUN-680136 VARCHAR(1)
            l_chk_pnp   LIKE type_file.chr1,     #No.FUN-680136 VARCHAR(1)
            l_chk_pmf   LIKE type_file.chr1,     #No.FUN-680136 VARCHAR(1)
            l_chk_pmg   LIKE type_file.chr1,     #No.FUN-680136 VARCHAR(1)
            l_chk_pmd   LIKE type_file.chr1,     #No.FUN-680136 VARCHAR(1)
            l_chk_pmc   LIKE type_file.chr1,     #No.FUN-680136 VARCHAR(1)
            l_chk_pov   LIKE type_file.chr1,     #FUN-7C0004 add
            l_c,l_s,i   LIKE type_file.num5,     #No.FUN-680136 SMALLINT
            l_cnt       LIKE type_file.num5      #No.FUN-680136 SMALLINT
   DEFINE  l_dbs,l_dbs2 LIKE azp_file.azp03      #FUN-7C0004

   MESSAGE ' COPY FOR INSERT .... '

  #讀取相關資料..........................................
   LET l_chk_pnp = 'Y'
   LET l_chk_pmf = 'Y'
   LET l_chk_pmg = 'Y'
   LET l_chk_pmd = 'Y'
   LET l_chk_pmc = 'Y'
   LET l_chk_pov = 'Y'  #FUN-7C0004 add
   DROP TABLE w1
   DROP TABLE w2
   DROP TABLE w3
   DROP TABLE w4
   DROP TABLE w5
   DROP TABLE w6        #FUN-7C0004 add
   SELECT * FROM pnp_file WHERE pnp01 = g_pmc.pmc01 INTO TEMP w1
   IF STATUS THEN LET l_chk_pnp='N' END IF

   SELECT * FROM pmf_file WHERE pmf01 = g_pmc.pmc01 INTO TEMP w2
   IF STATUS THEN LET l_chk_pmf='N' END IF

   SELECT * FROM pmg_file WHERE pmg01 = g_pmc.pmc01 INTO TEMP w3
   IF STATUS THEN LET l_chk_pmg='N' END IF

   SELECT * FROM pmc_file WHERE pmc01 = g_pmc.pmc01 INTO TEMP w4
   IF STATUS THEN LET l_chk_pmc='N' END IF

   SELECT * FROM pmd_file WHERE pmd01 = g_pmc.pmc01 INTO TEMP w5
   IF STATUS THEN LET l_chk_pmd='N' END IF

  #FUN-7C0004 begin
   SELECT * FROM pov_file WHERE pov01 = '0' and pov02 = g_pmc.pmc01 INTO TEMP w6
   IF STATUS THEN LET l_chk_pov='N' END IF
  #FUN-7C0004 add end

   FOR i = 1 TO 20
       IF cl_null(tm.dbs[i]) THEN  CONTINUE FOR END IF

       LET l_dbs = tm.dbs[i]           #FUN-7C0004

#TQC-940177   ---start
      #LET l_dbs = l_dbs CLIPPED,"."   #FUN-7C0004
      #LET l_dbs2 = g_dbs CLIPPED,"."  #FUN-7C0004
       LET l_dbs = s_dbstring(l_dbs CLIPPED)
       LET l_dbs2 = s_dbstring(g_dbs CLIPPED)
#TQC-940177   ---end

      #FUN-7C0004 begin
       #LET g_sql='INSERT INTO ',tm.dbs[i] CLIPPED,'.pnp_file ',
       #          'SELECT * FROM ',g_dbs CLIPPED,'.w1'
       LET g_sql='INSERT INTO ',l_dbs CLIPPED,'pnp_file ',
                 'SELECT * FROM ',l_dbs2 CLIPPED,'w1'
      #FUN-7C0004 end
       PREPARE i_pnp FROM g_sql

      #FUN-7C0004 begin
       #LET g_sql='INSERT INTO ',tm.dbs[i] CLIPPED,'.pmf_file ',
       #          'SELECT * FROM ',g_dbs CLIPPED,'.w2'
       LET g_sql='INSERT INTO ',l_dbs CLIPPED,'pmf_file ',
                 'SELECT * FROM ',l_dbs2 CLIPPED,'w2'
      #FUN-7C0004 end
       PREPARE i_pmf FROM g_sql

      #FUN-7C0004 begin
       #LET g_sql='INSERT INTO ',tm.dbs[i] CLIPPED,'.pmg_file ',
       #          'SELECT * FROM ',g_dbs CLIPPED,'.w3'
       LET g_sql='INSERT INTO ',l_dbs,'pmg_file ',
                 'SELECT * FROM ',l_dbs2 CLIPPED,'w3'
      #FUN-7C0004 end
       PREPARE i_pmg FROM g_sql

      #FUN-7C0004 begin
       #LET g_sql='INSERT INTO ',tm.dbs[i] CLIPPED,'.pmc_file ',
       #          'SELECT * FROM ',g_dbs CLIPPED,'.w4'
       LET g_sql='INSERT INTO ',l_dbs CLIPPED,'pmc_file ',
                 'SELECT * FROM ',l_dbs2 CLIPPED,'w4'
      #FUN-7C0004 end
       PREPARE i_pmc FROM g_sql

      #FUN-7C0004 begin
       #LET g_sql='INSERT INTO ',tm.dbs[i] CLIPPED,'.pmd_file ',
       #          'SELECT * FROM ',g_dbs CLIPPED,'.w5'
       LET g_sql='INSERT INTO ',l_dbs CLIPPED,'pmd_file ',
                 'SELECT * FROM ',l_dbs2 CLIPPED,'w5'
      #FUN-7C0004 end
       PREPARE i_pmd FROM g_sql

     #FUN-7C0004 begin
       LET g_sql='INSERT INTO ',l_dbs,'pov_file ',
                 'SELECT * FROM ',l_dbs2 CLIPPED,'w6'
       PREPARE i_pov FROM g_sql
     #FUN-7C0004 end

#-------------------- COPY FILE ------------------------------
       IF l_chk_pnp = 'Y' THEN
          EXECUTE i_pnp
          IF STATUS THEN
             LET g_msg = 'ins ',tm.dbs[i] CLIPPED,'.pnp'
             CALL cl_err(g_msg,SQLCA.sqlcode,1)
             LET g_success = 'N'
             EXIT FOR
          END IF
       END IF
       IF l_chk_pmf = 'Y' THEN
          EXECUTE i_pmf
          IF STATUS THEN
             LET g_msg = 'ins ',tm.dbs[i] CLIPPED,'.pmf'
             CALL cl_err(g_msg,SQLCA.sqlcode,1)
             LET g_success = 'N'
             EXIT FOR
          END IF
       END IF
       IF l_chk_pmg = 'Y' THEN
          EXECUTE i_pmg
          IF STATUS THEN
             LET g_msg = 'ins ',tm.dbs[i] CLIPPED,'.pmg'
             CALL cl_err(g_msg,SQLCA.sqlcode,1)
             LET g_success = 'N'
             EXIT FOR
          END IF
       END IF
       IF l_chk_pmc = 'Y' THEN
          EXECUTE i_pmc
          IF STATUS THEN
             LET g_msg = 'ins ',tm.dbs[i] CLIPPED,'.pmc'
             CALL cl_err(g_msg,SQLCA.sqlcode,1)
             LET g_success = 'N'
             EXIT FOR
          END IF
       END IF
       IF l_chk_pmd = 'Y' THEN
          EXECUTE i_pmd
          IF STATUS THEN
             LET g_msg = 'ins ',tm.dbs[i] CLIPPED,'.pmd'
             CALL cl_err(g_msg,SQLCA.sqlcode,1)
             LET g_success = 'N'
             EXIT FOR
          END IF
       END IF
       IF l_chk_pov = 'Y' THEN
          EXECUTE i_pov
          IF STATUS THEN
             LET g_msg = 'ins ',tm.dbs[i] CLIPPED,'.pov'
             CALL cl_err(g_msg,SQLCA.sqlcode,1)
             LET g_success = 'N'
             EXIT FOR
          END IF
       END IF
   END FOR

END FUNCTION

FUNCTION i600_dbs_upd()
   DEFINE l_pnp         RECORD LIKE pnp_file.*,
          l_pmf         RECORD LIKE pmf_file.*,
          l_pmg         RECORD LIKE pmg_file.*,
          l_pmc         RECORD LIKE pmc_file.*,
          l_pmd         RECORD LIKE pmd_file.*,
          l_pov         RECORD LIKE pov_file.*,  #FUN-7C0004 add
          l_c,l_s,i     LIKE type_file.num5,    #No.FUN-680136 SMALLINT
         #MOD-790049-begin-add
          l_chk_pnp   LIKE type_file.chr1,
          l_chk_pmf   LIKE type_file.chr1,
          l_chk_pmg   LIKE type_file.chr1,
          l_chk_pmd   LIKE type_file.chr1,
          l_chk_pmc   LIKE type_file.chr1,
         #MOD-790049-end-add
          l_chk_pov   LIKE type_file.chr1,     #FUN-7C0004 add
          l_cnt         LIKE type_file.num5    #No.FUN-680136 SMALLINT
   DEFINE  l_dbs,l_dbs2 LIKE azp_file.azp03      #FUN-7C0004

  #MOD-790049-begin-add
   LET l_chk_pnp = 'Y'
   LET l_chk_pmf = 'Y'
   LET l_chk_pmg = 'Y'
   LET l_chk_pmd = 'Y'
   LET l_chk_pmc = 'Y'
   LET l_chk_pov = 'Y'  #FUN-7C0004 add
   DROP TABLE w1
   DROP TABLE w2
   DROP TABLE w3
   DROP TABLE w4
   DROP TABLE w5
   DROP TABLE w6        #FUN-7C0004 add
   SELECT * FROM pnp_file WHERE pnp01 = g_pmc.pmc01 INTO TEMP w1
   IF STATUS THEN LET l_chk_pnp='N' END IF

   SELECT * FROM pmf_file WHERE pmf01 = g_pmc.pmc01 INTO TEMP w2
   IF STATUS THEN LET l_chk_pmf='N' END IF

   SELECT * FROM pmg_file WHERE pmg01 = g_pmc.pmc01 INTO TEMP w3
   IF STATUS THEN LET l_chk_pmg='N' END IF

   SELECT * FROM pmc_file WHERE pmc01 = g_pmc.pmc01 INTO TEMP w4
   IF STATUS THEN LET l_chk_pmc='N' END IF

   SELECT * FROM pmd_file WHERE pmd01 = g_pmc.pmc01 INTO TEMP w5
   IF STATUS THEN LET l_chk_pmd='N' END IF
  #MOD-790049-end-add

  #FUN-7C0004 add begin
   SELECT * FROM pov_file WHERE pov01 = '0' AND pov02 = g_pmc.pmc01 INTO TEMP w6
   IF STATUS THEN LET l_chk_pov='N' END IF
  #FUN-7C0004 add end

   MESSAGE ' COPY FOR UPDATE NOWAIT .... '
  #讀取相關資料..........................................
   LET g_sql='SELECT * FROM pnp_file WHERE pnp01="',g_pmc.pmc01 CLIPPED,'" '
   PREPARE s_pnp_p FROM g_sql
   DECLARE s_pnp CURSOR FOR s_pnp_p

   LET g_sql='SELECT * FROM pmf_file WHERE pmf01="',g_pmc.pmc01 CLIPPED,'" '
   PREPARE s_pmf_p FROM g_sql
   DECLARE s_pmf CURSOR FOR s_pmf_p

   LET g_sql='SELECT * FROM pmg_file WHERE pmg01="',g_pmc.pmc01 CLIPPED,'" '
   PREPARE s_pmg_p FROM g_sql
   DECLARE s_pmg CURSOR FOR s_pmg_p

   LET g_sql='SELECT * FROM pmc_file WHERE pmc01="',g_pmc.pmc01 CLIPPED,'" '
   PREPARE s_pmc_p FROM g_sql
   DECLARE s_pmc CURSOR FOR s_pmc_p

   LET g_sql='SELECT * FROM pmd_file WHERE pmd01="',g_pmc.pmc01 CLIPPED,'" '
   PREPARE s_pmd_p FROM g_sql
   DECLARE s_pmd CURSOR FOR s_pmd_p

#FUN-7C0004 add begin
   LET g_sql="SELECT * FROM pov_file WHERE pov01 = '0' AND pov02='",g_pmc.pmc01 CLIPPED,"'"
   PREPARE s_pov_p FROM g_sql
   DECLARE s_pov CURSOR FOR s_pov_p
#FUN-7C0004 add end

   FOR i = 1 TO 20
       IF cl_null(tm.dbs[i]) THEN  CONTINUE FOR END IF
       LET l_dbs = tm.dbs[i]           #FUN-7C0004
#TQC-940177   ---start
      #LET l_dbs = l_dbs CLIPPED,"."   #FUN-7C0004
      #LET l_dbs2 = g_dbs CLIPPED,"."   #FUN-7C0004
       LET l_dbs = s_dbstring(l_dbs CLIPPED)
       LET l_dbs2 = s_dbstring(g_dbs CLIPPED)
#TQC-940177   ---end
       #LET g_sql='SELECT COUNT(*) FROM ',tm.dbs[i] CLIPPED,'.pnp_file ', #FUN-7C0004
       LET g_sql='SELECT COUNT(*) FROM ',l_dbs CLIPPED,'pnp_file ',       #FUN-7C0004
                 ' WHERE pnp01= ? ',
                 '  AND  pnp02= ? ',
                 '  AND  pnp03= ?' CLIPPED
       PREPARE c_pnp_p FROM g_sql
       DECLARE c_pnp CURSOR FOR c_pnp_p

       #LET g_sql='SELECT COUNT(*) FROM ',tm.dbs[i] CLIPPED,'.pmf_file ', #FUN-7C0004
       LET g_sql='SELECT COUNT(*) FROM ',l_dbs CLIPPED,'pmf_file ',       #FUN-7C0004
                 ' WHERE pmf01= ? ',
                 '  AND  pmf02= ? ',
                 '  AND  pmf03= ?' CLIPPED
       PREPARE c_pmf_p FROM g_sql
       DECLARE c_pmf CURSOR FOR c_pmf_p

       #LET g_sql='SELECT COUNT(*) FROM ',tm.dbs[i] CLIPPED,'.pmg_file ',  #FUN-7C0004
       LET g_sql='SELECT COUNT(*) FROM ',l_dbs CLIPPED,'pmg_file ',        #FUN-7C0004
                 ' WHERE pmg01= ? ',
                 '  AND  pmg02= ? ' CLIPPED
       PREPARE c_pmg_p FROM g_sql
       DECLARE c_pmg CURSOR FOR c_pmg_p

       #LET g_sql='SELECT COUNT(*) FROM ',tm.dbs[i] CLIPPED,'.pmc_file ',  #FUN-7C0004
       LET g_sql='SELECT COUNT(*) FROM ',l_dbs CLIPPED,'pmc_file ',        #FUN-7C0004
                 'WHERE pmc01 = ? '
       PREPARE c_pmc_p FROM g_sql
       DECLARE c_pmc CURSOR FOR c_pmc_p

       #LET g_sql='SELECT COUNT(*) FROM ',tm.dbs[i] CLIPPED,'.pmd_file ',  #FUN-7C0004
       LET g_sql='SELECT COUNT(*) FROM ',l_dbs CLIPPED,'pmd_file ',        #FUN-7C0004
                 'WHERE pmd01 = ? ',
                 '  AND pmd02 = ? ',
                 '  AND pmd06 = ? ' CLIPPED
       PREPARE c_pmd_p FROM g_sql
       DECLARE c_pmd CURSOR FOR c_pmd_p

     #FUN-7C0004 add begin
       LET g_sql='SELECT COUNT(*) FROM ',l_dbs CLIPPED,'pov_file ',
                 'WHERE pov01 = ? ',
                 '  AND pov02 = ? '
       PREPARE c_pov_p FROM g_sql
       DECLARE c_pov CURSOR FOR c_pov_p
     #FUN-7C0004 add end

#-------------------- UPDATE FILE.pnp_file ------------------------------
   MESSAGE ' COPY FOR UPDATE NOWAIT.pnp_file .... '
       FOREACH s_pnp INTO l_pnp.*
          IF STATUS THEN
             CALL cl_err('foreach pnp',STATUS,0)
             EXIT FOREACH
          END IF
          OPEN c_pnp USING l_pnp.pnp01,l_pnp.pnp02,l_pnp.pnp03
          FETCH c_pnp INTO l_cnt
          IF l_cnt > 0 THEN
             #LET g_sql='UPDATE ',tm.dbs[i] CLIPPED,'.pnp_file ',  #FUN-7C0004
             LET g_sql='UPDATE ',l_dbs CLIPPED,'pnp_file ',        #FUN-7C0004
                       ' SET pnp01= ?,',
                           ' pnp02= ?,',
                           ' pnp03= ?,',
                           ' pnpacti= ?,',
                           ' pnpuser= ?,',
                           ' pnpgrup= ?,', #BugNo:4356
                           ' pnpmodu= ?,',
                           ' pnpdate= ? ',
                       ' WHERE pnp01= ? ',
                       '  AND  pnp02= ? ',
                       '  AND  pnp03= ?' CLIPPED
             PREPARE u_pnp FROM g_sql
             EXECUTE u_pnp USING l_pnp.pnp01,l_pnp.pnp02,l_pnp.pnp03,
                                 l_pnp.pnpacti,l_pnp.pnpuser,l_pnp.pnpgrup,
                                 l_pnp.pnpmodu,l_pnp.pnpdate,
                                 l_pnp.pnp01,l_pnp.pnp02,l_pnp.pnp03
             IF SQLCA.sqlcode OR SQLCA.sqlerrd[3] = 0  THEN
                LET g_msg = 'upd ',tm.dbs[i] CLIPPED,'.pnp'
                CALL cl_err(g_msg,SQLCA.sqlcode,1)
                LET g_success = 'N'
                EXIT FOREACH
             END IF
             #MOD-790049-begin-add
              ELSE
                #FUN-7C0004 begin
                 #LET g_sql='INSERT INTO ',tm.dbs[i] CLIPPED,'.pnp_file ',
                 #          'SELECT * FROM ',g_dbs CLIPPED,'.w1'
                 #-----MOD-860223---------
                 #LET g_sql='INSERT INTO ',l_dbs CLIPPED,'pnp_file ',
                 #          'SELECT * FROM ',l_dbs2 CLIPPED,'w1'
                 LET g_sql="INSERT INTO ",l_dbs CLIPPED,"pnp_file ",
                            "SELECT * FROM ",l_dbs2 CLIPPED,"w1 ",
                            " WHERE pnp01='",l_pnp.pnp01,"'",
                            "   AND pnp02='",l_pnp.pnp02,"'",
                            "   AND pnp03='",l_pnp.pnp03,"'"
                 #-----END MOD-860223-----
                #FUN-7C0004 end
	CALL cl_replace_sqldb(g_sql) RETURNING g_sql		#FUN-920032
                 PREPARE i_pnp_1 FROM g_sql
                 IF l_chk_pnp = 'Y' THEN
                    EXECUTE i_pnp_1
                    IF STATUS THEN
                       LET g_msg = 'ins ',tm.dbs[i] CLIPPED,'.pnp'
                       CALL cl_err(g_msg,SQLCA.sqlcode,1)
                       LET g_success = 'N'
                       EXIT FOREACH
                    END IF
                 END IF
             #MOD-790049-end-add
          END IF
       END FOREACH

#-------------------- UPDATE FILE.pmf_file ------------------------------
   MESSAGE ' COPY FOR UPDATE NOWAIT.pmf_file .... '
       FOREACH s_pmf INTO l_pmf.*
          IF STATUS THEN
             CALL cl_err('foreach pmf',STATUS,0)
             EXIT FOREACH
          END IF
          OPEN c_pmf USING l_pmf.pmf01,l_pmf.pmf02,l_pmf.pmf03
          FETCH c_pmf INTO l_cnt
          IF l_cnt > 0 THEN
             #LET g_sql='UPDATE ',tm.dbs[i] CLIPPED,'.pmf_file ',  #FUN-7C0004
             LET g_sql='UPDATE ',l_dbs CLIPPED,'pmf_file ',        #FUN-7C0004
                       ' SET pmf01= ?,',
                           ' pmf02= ?,',
                           ' pmf03= ?,',
                           ' pmfacti= ? ',
                       ' WHERE pmf01= ? ',
                       '  AND  pmf02= ? ',
                       '  AND  pmf03= ?' CLIPPED
             PREPARE u_pmf FROM g_sql
             EXECUTE u_pmf USING l_pmf.pmf01,l_pmf.pmf02,l_pmf.pmf03,
                                 l_pmf.pmfacti,
                                 l_pmf.pmf01,l_pmf.pmf02,l_pmf.pmf03
             IF SQLCA.sqlcode OR SQLCA.sqlerrd[3] = 0  THEN
                LET g_msg = 'upd ',tm.dbs[i] CLIPPED,'.pmf'
                CALL cl_err(g_msg,SQLCA.sqlcode,1)
                LET g_success = 'N'
                EXIT FOREACH
             END IF
             #MOD-790049-begin-add
              ELSE
                #FUN-7C0004 begin
                 #LET g_sql='INSERT INTO ',tm.dbs[i] CLIPPED,'.pmf_file ',
                 #          'SELECT * FROM ',g_dbs CLIPPED,'.w2'
                 #-----MOD-860223---------
                 #LET g_sql='INSERT INTO ',l_dbs CLIPPED,'pmf_file ',
                 #          'SELECT * FROM ',l_dbs2 CLIPPED,'w2'
                 LET g_sql="INSERT INTO ",l_dbs CLIPPED,"pmf_file ",
                           "SELECT * FROM ",l_dbs2 CLIPPED,"w2",
                           " WHERE pmf01='",l_pmf.pmf01,"'",
                           "   AND pmf02='",l_pmf.pmf02,"'",
                           "   AND pmf03='",l_pmf.pmf03,"'"
                 #-----END MOD-860223-----
                #FUN-7C0004 end
	CALL cl_replace_sqldb(g_sql) RETURNING g_sql		#FUN-920032
                 PREPARE i_pmf_1 FROM g_sql
                 IF l_chk_pmf = 'Y' THEN
                    EXECUTE i_pmf_1
                    IF STATUS THEN
                       LET g_msg = 'ins ',tm.dbs[i] CLIPPED,'.pmf'
                       CALL cl_err(g_msg,SQLCA.sqlcode,1)
                       LET g_success = 'N'
                       EXIT FOREACH
                    END IF
                 END IF
             #MOD-790049-end-add
          END IF
       END FOREACH

#-------------------- UPDATE FILE.pmg_file ------------------------------
   MESSAGE ' COPY FOR UPDATE NOWAIT.pmg_file .... '
       FOREACH s_pmg INTO l_pmg.*
          IF STATUS THEN
             CALL cl_err('foreach pmg',STATUS,0)
             EXIT FOREACH
          END IF
          OPEN c_pmg USING l_pmg.pmg01,l_pmg.pmg02
          FETCH c_pmg INTO l_cnt
          IF l_cnt > 0 THEN
             #LET g_sql='UPDATE ',tm.dbs[i] CLIPPED,'.pmg_file ',  #FUN-7C0004
             LET g_sql='UPDATE ',l_dbs CLIPPED,'pmg_file ',        #FUN-7C0004
                       ' SET pmg01= ?,',
                           ' pmg02= ?,',
                           ' pmg03= ? ',
                       ' WHERE pmg01= ? ',
                       '  AND  pmg02= ? ' CLIPPED
             PREPARE u_pmg FROM g_sql
             EXECUTE u_pmg USING l_pmg.pmg01,l_pmg.pmg02,l_pmg.pmg03,
                                 l_pmg.pmg01,l_pmg.pmg02
             IF SQLCA.sqlcode OR SQLCA.sqlerrd[3] = 0  THEN
                LET g_msg = 'upd ',tm.dbs[i] CLIPPED,'.pmg'
                CALL cl_err(g_msg,SQLCA.sqlcode,1)
                LET g_success = 'N'
                EXIT FOREACH
             END IF
             #MOD-790049-begin-add
              ELSE
                #FUN-7C0004 begin
                 #LET g_sql='INSERT INTO ',tm.dbs[i] CLIPPED,'.pmg_file ',
                 #          'SELECT * FROM ',g_dbs CLIPPED,'.w3'
                 #-----MOD-860223---------
                 #LET g_sql='INSERT INTO ',l_dbs CLIPPED,'pmg_file ',
                 #          'SELECT * FROM ',l_dbs2 CLIPPED,'w3'
                 LET g_sql="INSERT INTO ",l_dbs CLIPPED,"pmg_file ",
                           "SELECT * FROM ",l_dbs2 CLIPPED,"w3",
                           " WHERE pmg01='",l_pmg.pmg01,"'",
                           "   AND pmg02='",l_pmg.pmg02,"'"
                 #-----END MOD-860223-----
                #FUN-7C0004 end
	CALL cl_replace_sqldb(g_sql) RETURNING g_sql		#FUN-920032
                 PREPARE i_pmg_1 FROM g_sql
                 IF l_chk_pmg = 'Y' THEN
                    EXECUTE i_pmg_1
                    IF STATUS THEN
                       LET g_msg = 'ins ',tm.dbs[i] CLIPPED,'.pmg'
                       CALL cl_err(g_msg,SQLCA.sqlcode,1)
                       LET g_success = 'N'
                       EXIT FOREACH
                    END IF
                 END IF
             #MOD-790049-end-add
          END IF
       END FOREACH

#-------------------- UPDATE FILE.pmc_file ------------------------------
   MESSAGE ' COPY FOR UPDATE NOWAIT.pmc_file .... '
       FOREACH s_pmc INTO l_pmc.*
          IF STATUS THEN
             CALL cl_err('foreach pmc',STATUS,0)
             EXIT FOREACH
          END IF
          OPEN c_pmc USING l_pmc.pmc01
          FETCH c_pmc INTO l_cnt
          IF l_cnt > 0 THEN
             #LET g_sql='UPDATE ',tm.dbs[i] CLIPPED,'.pmc_file', #FUN-7C0004
             LET g_sql='UPDATE ',l_dbs CLIPPED,'pmc_file',       #FUN-7C0004
                       ' SET pmc01= ?, pmc02= ?, pmc03= ?,',
                           ' pmc04= ?, pmc05= ?, pmc06= ?,',
                           ' pmc07= ?, pmc081= ?, ',
                           ' pmc082= ?, ',
                           ' pmc091= ?, ',
                           ' pmc092= ?, ',
                           ' pmc093= ?, ',
                           ' pmc094= ?, pmc095= ?,',
                           ' pmc10= ?, pmc11= ?, pmc12= ?,',
                           ' pmc13= ?, pmc14= ?, pmc15= ?,',
                           ' pmc16= ?, pmc17= ?, pmc18= ?,',
                           ' pmc19= ?, pmc20= ?, pmc21= ?,',
                           ' pmc22= ?, pmc23= ?, pmc24= ?,',
                           ' pmc25= ?, pmc26= ?, pmc27= ?,',
                           ' pmc28= ?, pmc912=?, pmc913=?, pmc30= ?, pmc40= ?,', #FUN-660067 add pmc912  #No:FUN-880094 add pmc913
                           ' pmc41= ?, pmc42= ?, pmc43= ?,',
                           ' pmc44= ?, pmc45= ?, pmc46= ?,',
                           ' pmc47= ?, pmc48= ?, pmc49= ?,',
                           ' pmc50= ?, pmc51= ?, pmc52= ?,',
                           ' pmc53= ?, pmc54= ?, pmc55= ?,',
                           ' pmc56= ?, pmc57= ?, pmc901= ?, pmc902= ?,',         #FUN-970022 ADD pmc57
                           ' pmc903= ?, pmc904= ?, pmc905= ?,',
                           ' pmc906= ?, pmc907= ?, pmc908= ?,',
                           ' pmc909= ?, pmc910= ?, pmcacti= ?,',
                           ' pmcuser= ?, pmcgrup= ?, pmcmodu= ?,',
                           ' pmcdate= ?, pmc281=? ',
                       'WHERE pmc01 = ? '
             PREPARE u_pmc FROM g_sql
             EXECUTE u_pmc USING l_pmc.pmc01,l_pmc.pmc02,l_pmc.pmc03,
                                 l_pmc.pmc04,l_pmc.pmc05,l_pmc.pmc06,
                                 l_pmc.pmc07,l_pmc.pmc081,
                                 l_pmc.pmc082,
                                 l_pmc.pmc091,
                                 l_pmc.pmc092,
                                 l_pmc.pmc093,
                                 l_pmc.pmc094,l_pmc.pmc095,l_pmc.pmc10,
                                 l_pmc.pmc11,l_pmc.pmc12,l_pmc.pmc13,
                                 l_pmc.pmc14,l_pmc.pmc15,l_pmc.pmc16,
                                 l_pmc.pmc17,l_pmc.pmc18,l_pmc.pmc19,
                                 l_pmc.pmc20,l_pmc.pmc21,l_pmc.pmc22,
                                 l_pmc.pmc23,l_pmc.pmc24,l_pmc.pmc25,
                                 l_pmc.pmc26,l_pmc.pmc27,l_pmc.pmc28,l_pmc.pmc912,  #FUN-660067 add pmc912
                                 l_pmc.pmc913,  #No:FUN-880094 add
                                 l_pmc.pmc30,l_pmc.pmc40,l_pmc.pmc41,
                                 l_pmc.pmc42,l_pmc.pmc43,l_pmc.pmc44,
                                 l_pmc.pmc45,l_pmc.pmc46,l_pmc.pmc47,
                                 l_pmc.pmc48,l_pmc.pmc49,l_pmc.pmc50,
                                 l_pmc.pmc51,l_pmc.pmc52,l_pmc.pmc53,
                                 l_pmc.pmc54,l_pmc.pmc55,l_pmc.pmc56,l_pmc.pmc57,   #FUN-970022 ADD pmc57
                                 l_pmc.pmc901,l_pmc.pmc902,l_pmc.pmc903,
                                 l_pmc.pmc904,l_pmc.pmc905,l_pmc.pmc906,
                                 l_pmc.pmc907,l_pmc.pmc908,l_pmc.pmc909,
                                 l_pmc.pmc910,l_pmc.pmcacti,l_pmc.pmcuser,
                                 l_pmc.pmcgrup,l_pmc.pmcmodu,l_pmc.pmcdate,
                                 l_pmc.pmc281,  #NO.FUN-870037 add
                                 l_pmc.pmc01
             IF SQLCA.sqlcode OR SQLCA.sqlerrd[3] = 0 THEN
                LET g_msg = 'upd ',tm.dbs[i] CLIPPED,'.pmc'
                CALL cl_err(g_msg,SQLCA.sqlcode,1)
                LET g_success = 'N'
                EXIT FOREACH
             END IF
             #MOD-790049-begin-add
              ELSE
                #FUN-7C0004 begin
                 #LET g_sql='INSERT INTO ',tm.dbs[i] CLIPPED,'.pmc_file ',
                 #          'SELECT * FROM ',g_dbs CLIPPED,'.w4'
                 #-----MOD-860223---------
                 #LET g_sql='INSERT INTO ',l_dbs CLIPPED,'pmc_file ',
                 #          'SELECT * FROM ',l_dbs2 CLIPPED,'w4'
                 LET g_sql="INSERT INTO ",l_dbs CLIPPED,"pmc_file ",
                           "SELECT * FROM ",l_dbs2 CLIPPED,"w4",
                           " WHERE pmc01='",l_pmc.pmc01,"'"
                 #-----END MOD-860223-----
                #FUN-7C0004 end
	CALL cl_replace_sqldb(g_sql) RETURNING g_sql		#FUN-920032
                 PREPARE i_pmc_1 FROM g_sql
                 IF l_chk_pmc = 'Y' THEN
                    EXECUTE i_pmc_1
                    IF STATUS THEN
                       LET g_msg = 'ins ',tm.dbs[i] CLIPPED,'.pmc'
                       CALL cl_err(g_msg,SQLCA.sqlcode,1)
                       LET g_success = 'N'
                       EXIT FOREACH
                    END IF
                 END IF
             #MOD-790049-end-add
          END IF
       END FOREACH

#-------------------- UPDATE FILE.pmd_file ------------------------------
   MESSAGE ' COPY FOR UPDATE NOWAIT.pmd_file .... '
       FOREACH s_pmd INTO l_pmd.*
          IF STATUS THEN
             CALL cl_err('foreach pmd',STATUS,0)
             EXIT FOREACH
          END IF
          OPEN c_pmd USING l_pmd.pmd01,l_pmd.pmd02,l_pmd.pmd06
          FETCH c_pmd INTO l_cnt
          IF l_cnt > 0 THEN
             #LET g_sql='UPDATE ',tm.dbs[i] CLIPPED,'.pmd_file ',  #FUN-7C0004
             LET g_sql='UPDATE ',l_dbs CLIPPED,'pmd_file ',        #FUN-7C0004
                       ' SET pmd01= ?,',
                           ' pmd02= ?,',
                           ' pmd03= ?,',
                           ' pmd04= ?,',
                           ' pmd05= ?,',
                           ' pmd06= ?,',
                           ' pmd07= ? ',
                       ' WHERE pmd01= ? ',
                       '  AND  pmd02= ? ',
                       '  AND  pmd06= ? ' CLIPPED
             PREPARE u_pmd FROM g_sql
             EXECUTE u_pmd USING l_pmd.pmd01,l_pmd.pmd02,l_pmd.pmd03,
                                 l_pmd.pmd04,l_pmd.pmd05,l_pmd.pmd06,
                                 l_pmd.pmd07,
                                 l_pmd.pmd01,l_pmd.pmd02,l_pmd.pmd06
             IF SQLCA.sqlcode OR SQLCA.sqlerrd[3] = 0  THEN
                LET g_msg = 'upd ',tm.dbs[i] CLIPPED,'.pmd'
                CALL cl_err(g_msg,SQLCA.sqlcode,1)
                LET g_success = 'N'
                EXIT FOREACH
             END IF
              #MOD-790049-begin-add
               ELSE
                 #FUN-7C0004 begin
                  #LET g_sql='INSERT INTO ',tm.dbs[i] CLIPPED,'.pmd_file ',
                  #          'SELECT * FROM ',g_dbs CLIPPED,'.w5'
                  #-----MOD-860223---------
                  #LET g_sql='INSERT INTO ',l_dbs CLIPPED,'pmd_file ',
                  #          'SELECT * FROM ',l_dbs2 CLIPPED,'w5'
                  LET g_sql="INSERT INTO ",l_dbs CLIPPED,"pmd_file ",
                            "SELECT * FROM ",l_dbs2 CLIPPED,"w5",
                            " WHERE pmd01='",l_pmd.pmd01,"'",
                            "   AND pmd02='",l_pmd.pmd02,"'",
                            "   AND pmd06='",l_pmd.pmd06,"'"
                  #-----END MOD-860223-----
                 #FUN-7C0004 end
	CALL cl_replace_sqldb(g_sql) RETURNING g_sql		#FUN-920032
                  PREPARE i_pmd_1 FROM g_sql
                  IF l_chk_pmd = 'Y' THEN
                     EXECUTE i_pmd_1
                     IF STATUS THEN
                        LET g_msg = 'ins ',tm.dbs[i] CLIPPED,'.pmd'
                        CALL cl_err(g_msg,SQLCA.sqlcode,1)
                        LET g_success = 'N'
                        EXIT FOREACH
                     END IF
                  END IF
              #MOD-790049-end-add
          END IF
       END FOREACH

#FUN-7C0004 add begin
#-------------------- UPDATE FILE.pov_file ------------------------------
   MESSAGE ' COPY FOR UPDATE NOWAIT.pov_file .... '
       FOREACH s_pov INTO l_pov.*
          IF STATUS THEN
             CALL cl_err('foreach pov',STATUS,0)
             EXIT FOREACH
          END IF
          OPEN c_pov USING l_pov.pov01,l_pov.pov02
          FETCH c_pov INTO l_cnt
          IF l_cnt > 0 THEN
             #LET g_sql='UPDATE ',tm.dbs[i] CLIPPED,'.pov_file ', #FUN-7C0004
             LET g_sql='UPDATE ',l_dbs CLIPPED,'pov_file ',       #FUN-7C0004
                       ' SET pov01= ?,',
                           ' pov02= ?,',
                           ' pov03= ?,',
                           ' pov14= ?,',
                           ' pov16= ?,',
                           ' pov17= ?,',
                           ' pov21= ?,',
                           ' pov04= ?,',
                           ' pov19= ?,',
                           ' pov23= ?,',
                           ' pov07= ?,',
                           ' pov09= ?,',
                           ' pov25= ?,',
                           ' pov27= ? ',
                       ' WHERE pov01= ? ',
                       '  AND  pov02= ? ' CLIPPED
             PREPARE u_pov FROM g_sql
             EXECUTE u_pov USING l_pov.pov01,l_pov.pov02,l_pov.pov03,
                                 l_pov.pov14,l_pov.pov16,l_pov.pov17,
                                 l_pov.pov21,l_pov.pov04,l_pov.pov19,
                                 l_pov.pov23,l_pov.pov07,l_pov.pov09,
                                 l_pov.pov25,l_pov.pov27,
                                 l_pov.pov01,l_pov.pov02
             IF SQLCA.sqlcode OR SQLCA.sqlerrd[3] = 0  THEN
                LET g_msg = 'upd ',tm.dbs[i] CLIPPED,'.pov'
                CALL cl_err(g_msg,SQLCA.sqlcode,1)
                LET g_success = 'N'
                EXIT FOREACH
             END IF
          ELSE
             #-----MOD-860223---------
             #LET g_sql='INSERT INTO ',l_dbs CLIPPED,'pov_file ',
             #          'SELECT * FROM ',l_dbs2 CLIPPED,'w6'
             LET g_sql="INSERT INTO ",l_dbs CLIPPED,"pov_file ",
                       "SELECT * FROM ",l_dbs2 CLIPPED,"w6",
                       " WHERE pov01='",l_pov.pov01,"'",
                       "   AND pov02='",l_pov.pov02,"'"
             #-----END MOD-860223-----
	CALL cl_replace_sqldb(g_sql) RETURNING g_sql		#FUN-920032
             PREPARE i_pov_1 FROM g_sql
             IF l_chk_pov = 'Y' THEN
                EXECUTE i_pov_1
                IF STATUS THEN
                   LET g_msg = 'ins ',tm.dbs[i] CLIPPED,'.pov'
                   CALL cl_err(g_msg,SQLCA.sqlcode,1)
                   LET g_success = 'N'
                   EXIT FOREACH
                END IF
             END IF
          END IF
       END FOREACH
#FUN-7C0004 add end

   END FOR
END FUNCTION

#FUN-690021----------------------------------add----------
FUNCTION i600_confirm()
   DEFINE l_pmc01      LIKE   pmc_file.pmc01
   DEFINE l_n          LIKE type_file.num5    #No.FUN-680136 SMALLINT
   IF (g_pmc.pmc01 IS NULL) THEN
      CALL cl_err('',-400,0)
      RETURN
   END IF
   #No.FUN-820034  --Begin
   IF NOT s_dc_ud_flag('5',g_pmc.pmc1920,g_plant,'u') THEN
      CALL cl_err(g_pmc.pmc1920,'aoo-045',1)
      RETURN
   END IF
   #No.FUN-820034  --End
   IF g_pmc.pmcacti='N' THEN
      CALL cl_err('','mfg0301',1)
      RETURN
   END IF
   IF g_pmc.pmc05 !='0' THEN
      #不在開立狀態，不能申請確認
      CALL cl_err('','atm-221',1)
      RETURN
   END IF

   IF NOT cl_confirm('aim-301') THEN RETURN END IF    #是否確定執行確認(Y/N)?

   LET g_success = 'Y'                                #FUN-9A0056 add

   BEGIN WORK

   OPEN i600_cl USING g_pmc_rowid
   IF STATUS THEN
       CALL cl_err("OPEN i600_cl:", STATUS, 1)
       CLOSE i600_cl
       ROLLBACK WORK
       RETURN
   END IF
   FETCH i600_cl INTO g_pmc.*
   IF SQLCA.sqlcode THEN
      CALL cl_err('',SQLCA.sqlcode,1)
      RETURN
   END IF

   CALL i600_show()

   LET g_pmc.pmc05 = '1'
   LET g_pmc.pmcacti = 'Y'

   UPDATE pmc_file
      SET pmc05=g_pmc.pmc05,
          pmcacti=g_pmc.pmcacti
    WHERE ROWID = g_pmc_rowid
   IF SQLCA.SQLERRD[3]=0 THEN
      CALL cl_err3("upd","pmc_file",g_pmc.pmc01,"",SQLCA.sqlcode,"","",1)
     #ROLLBACK WORK                                                        #FUN-9A0056 mark
      LET g_success = 'N'                                                  #FUN-9A0056 add
   END IF

  #FUN-9A0056 add begin -------
   IF g_aza.aza90 MATCHES "[Yy]" AND g_success = 'Y' THEN
     CALL i600_mes('insert',g_pmc.pmc01)
   END IF
  #FUN-9A0056 add end ---------

   CLOSE i600_cl
   CALL i600_list_fill()  #No.FUN-820034

  #COMMIT WORK                                                             #FUN-9A0056 mark

  #FUN-9A0056 add begin ----
   IF g_success = 'N' THEN
      ROLLBACK WORK
   ELSE
      COMMIT WORK
   END IF
  #FUN-9A0056 add end ------

   SELECT * INTO g_pmc.* FROM pmc_file where ROWID=g_pmc_rowid
   CALL i600_show()
END FUNCTION

FUNCTION i600_unconfirm()
   DEFINE l_pmc01 LIKE pmc_file.pmc01

   IF (g_pmc.pmc01 IS NULL) THEN
      CALL cl_err('',-400,0)
      RETURN
   END IF

  #No.FUN-820034  --Begin
   IF NOT s_dc_ud_flag('5',g_pmc.pmc1920,g_plant,'u') THEN
      CALL cl_err(g_pmc.pmc1920,'aoo-045',1)
      RETURN
   END IF
  #No.FUN-820034  --End

   IF g_pmc.pmcacti='N' THEN
      CALL cl_err('','mfg0301',1)
      RETURN
   END IF

  #非審核狀態 不能取消審核
   IF g_pmc.pmc05!='1' THEN
      CALL  cl_err('','atm-053',1)
      RETURN
   END IF

   IF NOT cl_confirm('aim-302') THEN RETURN END IF    #lyl

   LET g_success = 'Y'                                #FUN-9A0056 add

   BEGIN WORK

   OPEN i600_cl USING g_pmc_rowid
   IF STATUS THEN
       CALL cl_err("OPEN i600_cl:", STATUS, 1)
       CLOSE i600_cl
       ROLLBACK WORK
       RETURN
   END IF

   FETCH i600_cl INTO g_pmc.*
   IF SQLCA.sqlcode THEN
      CALL cl_err('',SQLCA.sqlcode,1)
      RETURN
   END IF

   CALL i600_show()

   UPDATE pmc_file
      SET pmc05='0',
          pmcacti='P'
    WHERE ROWID = g_pmc_rowid
   IF SQLCA.SQLERRD[3]=0 THEN
      CALL cl_err3("upd","pmc_file",g_pmc.pmc01,"",SQLCA.sqlcode,"","",1)
     #ROLLBACK WORK               #FUN-9A0056 mark
      LET g_success = 'N'         #FUN-9A0056 add
   END IF

  #FUN-9A0056 add begin ----------
   IF g_aza.aza90 MATCHES "[Yy]" AND g_success = 'Y' THEN
     CALL i600_mes('delete',g_pmc.pmc01)
   END IF
  #FUN-9A0056 add end ------------

   CLOSE i600_cl
   CALL i600_list_fill()  #No.FUN-820034

  #FUN-9A0056 add str ---
   IF g_success = 'N' THEN
     ROLLBACK WORK
   ELSE
     COMMIT WORK
   END IF
  #FUN-9A0056 add end ---

  #COMMIT WORK

   SELECT * INTO g_pmc.* FROM pmc_file where ROWID=g_pmc_rowid
   CALL i600_show()
END FUNCTION

FUNCTION i600_hang()
   DEFINE l_pmc01 LIKE pmc_file.pmc01

   IF cl_null(g_pmc.pmc01) THEN
      CALL cl_err('',-400,0)
      RETURN
   END IF
   #No.FUN-820034  --Begin
   IF NOT s_dc_ud_flag('5',g_pmc.pmc1920,g_plant,'u') THEN
      CALL cl_err(g_pmc.pmc1920,'aoo-045',1)
      RETURN
   END IF
   #No.FUN-820034  --End
   IF g_pmc.pmcacti='N' THEN
      #本筆資料無效
      CALL cl_err('','mfg0301',1)
      RETURN
   END IF
   IF g_pmc.pmcacti !='Y' THEN
      #不在確認狀態，不可異動！
      CALL cl_err('','atm-053',1)
      RETURN
   END IF

   IF NOT cl_confirm('atm-236') THEN RETURN END IF    #確定要留置?

   BEGIN WORK

   OPEN i600_cl USING g_pmc_rowid
   IF STATUS THEN
       CALL cl_err("OPEN i600_cl:", STATUS, 1)
       CLOSE i600_cl
       ROLLBACK WORK
       RETURN
   END IF
   FETCH i600_cl INTO g_pmc.*
   IF SQLCA.sqlcode THEN
      CALL cl_err('',SQLCA.sqlcode,1)
      RETURN
   END IF
   CALL i600_show()
   LET g_pmc_t.* = g_pmc.*
   UPDATE pmc_file
      SET pmc05='2', #留置
          pmcacti='H'
    WHERE ROWID = g_pmc_rowid
   IF SQLCA.SQLERRD[3]=0 THEN
       CALL cl_err3("upd","pmc_file",g_pmc.pmc01,"",SQLCA.sqlcode,"","",1)
       ROLLBACK WORK
       LET g_pmc.pmc05 = g_pmc_t.pmc05
       LET g_pmc.pmcacti = g_pmc_t.pmcacti
       DISPLAY BY NAME g_pmc.pmc05,g_pmc.pmcacti
    END IF
    CLOSE i600_cl
    CALL i600_list_fill()  #No.FUN-820034
    COMMIT WORK
    SELECT * INTO g_pmc.* FROM pmc_file where ROWID=g_pmc_rowid
    CALL i600_show()
END FUNCTION

FUNCTION i600_unhang()
   DEFINE l_pmc01 LIKE pmc_file.pmc01

   IF (g_pmc.pmc01 IS NULL) THEN
      CALL cl_err('',-400,0)
      RETURN
   END IF
   #No.FUN-820034  --Begin
   IF NOT s_dc_ud_flag('5',g_pmc.pmc1920,g_plant,'u') THEN
      CALL cl_err(g_pmc.pmc1920,'aoo-045',1)
      RETURN
   END IF
   #No.FUN-820034  --End
   IF g_pmc.pmcacti='N' THEN
      CALL cl_err('','mfg0301',1)
      RETURN
   END IF
   IF g_pmc.pmc05 !='2' THEN
      #不在留置狀態，不可異動！
      CALL cl_err('','atm-054',1)
      RETURN
   END IF

   IF NOT cl_confirm('atm-237') THEN RETURN END IF    #確定取消留置?
   BEGIN WORK

   OPEN i600_cl USING g_pmc_rowid
   IF STATUS THEN
       CALL cl_err("OPEN i600_cl:", STATUS, 1)
       CLOSE i600_cl
       ROLLBACK WORK
       RETURN
   END IF
   FETCH i600_cl INTO g_pmc.*
   IF SQLCA.sqlcode THEN
      CALL cl_err('',SQLCA.sqlcode,1)
      RETURN
   END IF
   CALL i600_show()
   LET g_chr=g_pmc.pmc05
   LET g_pmc_t.* = g_pmc.*
   UPDATE pmc_file
      SET pmc05='1', #確認
          pmcacti='Y'
    WHERE ROWID = g_pmc_rowid
   IF SQLCA.SQLERRD[3]=0 THEN
       CALL cl_err3("upd","pmc_file",g_pmc.pmc01,"",SQLCA.sqlcode,"","",1)
       ROLLBACK WORK
       LET g_pmc.pmc05=g_pmc_t.pmc05
       LET g_pmc.pmcacti=g_pmc_t.pmcacti
       DISPLAY BY NAME g_pmc.pmc05,g_pmc.pmcacti
   END IF
   CLOSE i600_cl
   CALL i600_list_fill()  #No.FUN-820034
   COMMIT WORK
   SELECT * INTO g_pmc.* FROM pmc_file where ROWID=g_pmc_rowid
   CALL i600_show()
END FUNCTION

FUNCTION i600_untransaction() #停止交易
   DEFINE l_pmc01 LIKE pmc_file.pmc01

   IF (g_pmc.pmc01 IS NULL) THEN
      CALL cl_err('',-400,0)
      RETURN
   END IF
   #No.FUN-820034  --Begin
   IF NOT s_dc_ud_flag('5',g_pmc.pmc1920,g_plant,'u') THEN
      CALL cl_err(g_pmc.pmc1920,'aoo-045',1)
      RETURN
   END IF
   #No.FUN-820034  --End
   IF g_pmc.pmcacti='N' THEN
      CALL cl_err('','mfg0301',1)
      RETURN
   END IF
   IF g_pmc.pmcacti != 'Y' THEN
      #不在確認狀態，不可異動！
      CALL cl_err('','atm-053',1)
      RETURN
   END IF

   IF NOT cl_confirm('atm-055') THEN RETURN END IF    #是否停止交易？
   BEGIN WORK

   OPEN i600_cl USING g_pmc_rowid
   IF STATUS THEN
       CALL cl_err("OPEN i600_cl:", STATUS, 1)
       CLOSE i600_cl
       ROLLBACK WORK
       RETURN
   END IF
   FETCH i600_cl INTO g_pmc.*
   IF SQLCA.sqlcode THEN
      CALL cl_err('',SQLCA.sqlcode,1)
      RETURN
   END IF
   CALL i600_show()
   LET g_pmc_t.* = g_pmc.*
   UPDATE pmc_file
      SET pmc05='3',#停上交易
          pmcacti='H'
    WHERE ROWID = g_pmc_rowid
   IF SQLCA.SQLERRD[3]=0 THEN
       CALL cl_err3("upd","pmc_file",g_pmc.pmc01,"",SQLCA.sqlcode,"","",1)
       ROLLBACK WORK
       LET g_pmc.* = g_pmc_t.*
       DISPLAY BY NAME g_pmc.pmc05,g_pmc.pmcacti
   END IF
   CLOSE i600_cl
   CALL i600_list_fill()  #No.FUN-820034
   COMMIT WORK
   SELECT * INTO g_pmc.* FROM pmc_file where ROWID=g_pmc_rowid
   CALL i600_show()
END FUNCTION

FUNCTION i600_transaction() #恢復交易
   DEFINE l_pmc01 LIKE pmc_file.pmc01

   IF (g_pmc.pmc01 IS NULL) THEN
      CALL cl_err('',-400,0)
      RETURN
   END IF
   #No.FUN-820034  --Begin
   IF NOT s_dc_ud_flag('5',g_pmc.pmc1920,g_plant,'u') THEN
      CALL cl_err(g_pmc.pmc1920,'aoo-045',1)
      RETURN
   END IF
   #No.FUN-820034  --End
   IF g_pmc.pmcacti='N' THEN
      CALL cl_err('','mfg0301',1)
      RETURN
   END IF
   IF g_pmc.pmc05!='3' THEN
      #不在停止交易狀態，不可異動！
      CALL cl_err('','atm-057',1)
      RETURN
   END IF

   IF NOT cl_confirm('atm-056') THEN RETURN END IF    #lyl
   BEGIN WORK

   OPEN i600_cl USING g_pmc_rowid
   IF STATUS THEN
       CALL cl_err("OPEN i600_cl:", STATUS, 1)
       CLOSE i600_cl
       ROLLBACK WORK
       RETURN
   END IF
   FETCH i600_cl INTO g_pmc.*
   IF SQLCA.sqlcode THEN
      CALL cl_err('',SQLCA.sqlcode,1)
      RETURN
   END IF
   CALL i600_show()
   LET g_pmc_t.* = g_pmc.*
   UPDATE pmc_file
      SET pmc05='1',#恢復交易
          pmcacti='Y'
    WHERE ROWID = g_pmc_rowid
   IF SQLCA.SQLERRD[3]=0 THEN
       CALL cl_err3("upd","pmc_file",g_pmc.pmc01,"",SQLCA.sqlcode,"","",1)
       ROLLBACK WORK
       LET g_pmc.* = g_pmc_t.*
       DISPLAY BY NAME g_pmc.pmc05,g_pmc.pmcacti
   END IF
   CLOSE i600_cl
   CALL i600_list_fill()  #No.FUN-820034
   COMMIT WORK
   SELECT * INTO g_pmc.* FROM pmc_file where ROWID=g_pmc_rowid
   CALL i600_show()
END FUNCTION
#show 圖示
FUNCTION i600_show_pic()
     LET g_chr='N'
     LET g_chr1='N'
     LET g_chr2='N'
     IF g_pmc.pmc05='1' THEN
         LET g_chr='Y'
     END IF
     IF g_pmc.pmc05='0' THEN
         LET g_chr1='Y'
     END IF
     IF g_pmc.pmc05='2' THEN
         LET g_chr2='Y'
     END IF
     CALL cl_set_field_pic1(g_chr,""  ,""  ,""  ,""  ,g_pmc.pmcacti,""    ,g_chr2)
                           #確認 ,核准,過帳,結案,作廢,有效         ,申請  ,留置
     #圖形顯示
END FUNCTION
#FUN-690021----------------------------------add-end------

#FUN-6A0007...............begin
FUNCTION i600_abx()

   IF cl_null(g_pmc.pmc01) THEN
      RETURN
   END IF
   #No.FUN-820034  --Begin
   IF NOT s_dc_ud_flag('5',g_pmc.pmc1920,g_plant,'u') THEN
      CALL cl_err(g_pmc.pmc1920,'aoo-045',1)
      RETURN
   END IF
   #No.FUN-820034  --End
   BEGIN WORK

   LET g_pmc_t.* = g_pmc.*

   OPEN i600_cl USING g_pmc_rowid
   IF STATUS THEN
      CALL cl_err("OPEN i600_cl:", STATUS, 1)
      CLOSE i600_cl
      ROLLBACK WORK
      RETURN
   END IF

   FETCH i600_cl INTO g_pmc.*               # 對DB鎖定
   IF SQLCA.sqlcode THEN
      CALL cl_err(g_pmc.pmc01,SQLCA.sqlcode,0)
      RETURN
   END IF

   INPUT BY NAME g_pmc.pmc1912,g_pmc.pmc1913,
                 g_pmc.pmc1914,g_pmc.pmc1915,g_pmc.pmc1916 WITHOUT DEFAULTS

      AFTER FIELD pmc1912
         IF NOT cl_null(g_pmc.pmc1912) THEN
            CALL i600_pmc1912()
            IF NOT cl_null(g_errno) THEN
               CALL cl_err(g_pmc.pmc1912,g_errno,0)
               NEXT FIELD pmc1912
            END IF
         ELSE
            LET g_bxr02_1 = NULL
            DISPLAY g_bxr02_1 TO FORMONLY.reason1
         END IF

      AFTER FIELD pmc1913
         IF NOT cl_null(g_pmc.pmc1913) THEN
            CALL i600_pmc1913()
            IF NOT cl_null(g_errno) THEN
               CALL cl_err(g_pmc.pmc1913,g_errno,0)
               NEXT FIELD pmc1913
            END IF
         ELSE
            LET g_bxr02_2 = NULL
            DISPLAY g_bxr02_2 TO FORMONLY.reason2
         END IF

      ON ACTION CONTROLP
         CASE
            WHEN INFIELD(pmc1912)
               CALL cl_init_qry_var()
               LET g_qryparam.form = "q_bxr"
               LET g_qryparam.default1 = g_pmc.pmc1912
               CALL cl_create_qry() RETURNING g_pmc.pmc1912
               CALL i600_pmc1912()
               DISPLAY BY NAME g_pmc.pmc1912

            WHEN INFIELD(pmc1913) #保稅倉退異動原因代碼
               CALL cl_init_qry_var()
               LET g_qryparam.form = "q_bxr"
               LET g_qryparam.default1 = g_pmc.pmc1913
               CALL cl_create_qry() RETURNING g_pmc.pmc1913
               CALL i600_pmc1913()
               DISPLAY BY NAME g_pmc.pmc1913
            OTHERWISE EXIT CASE
         END CASE

      ON IDLE g_idle_seconds
         CALL cl_on_idle()
         CONTINUE INPUT

     ON ACTION about
        CALL cl_about()

     ON ACTION help
        CALL cl_show_help()

     ON ACTION controlg
        CALL cl_cmdask()


   END INPUT

   IF INT_FLAG THEN
      LET INT_FLAG=0
      LET g_pmc.* = g_pmc_t.*
      CALL i600_show()
      CALL cl_err('',9001,0)
      RETURN
   END IF
   UPDATE pmc_file SET pmc1912 = g_pmc.pmc1912,
                       pmc1913 = g_pmc.pmc1913,
                       pmc1914 = g_pmc.pmc1914,
                       pmc1915 = g_pmc.pmc1915,
                       pmc1916 = g_pmc.pmc1916,
                       pmcacti = g_pmc.pmcacti,
                       pmcmodu = g_user, pmcdate = g_today
          WHERE pmc01 = g_pmc.pmc01
   IF SQLCA.SQLCODE THEN
      CALL cl_err('update pmc912',SQLCA.SQLCODE,0)
      ROLLBACK WORK
   ELSE
      COMMIT WORK
      LET g_pmc.pmcmodu = g_user
      LET g_pmc.pmcdate = g_today
      DISPLAY BY NAME g_pmc.pmcmodu,g_pmc.pmcdate
   END IF
END FUNCTION

#FUN-7C0004 begin
FUNCTION i600_cur_occ(l_azp03)
  DEFINE l_azp03 LIKE azp_file.azp03,
         l_sql   STRING

 #LET l_azp03 = l_azp03 CLIPPED,"." #TQC-940177
  LET l_azp03 = s_dbstring(l_azp03 CLIPPED) #TQC-940177
  LET l_sql = "SELECT occ02 FROM ",l_azp03 CLIPPED,"occ_file ",
            " WHERE occ01 =?"  #l_pov.pov27
  PREPARE occ_pre FROM l_sql
END FUNCTION

FUNCTION i600_i_t()
  DEFINE   l_sql          STRING
  DEFINE   l_cnt          LIKE type_file.num5
  DEFINE   l_pov   RECORD LIKE pov_file.*
  DEFINE   l_pov_t RECORD LIKE pov_file.*
  DEFINE   l_azp03        LIKE azp_file.azp03   #資料庫代號
  DEFINE   l_pov02        LIKE pov_file.pov02
  DEFINE   l_pmc03        LIKE pmc_file.pmc03,
           l_smydesc_1    LIKE smy_file.smydesc,
           l_smydesc_2    LIKE smy_file.smydesc,
           l_smydesc_3    LIKE smy_file.smydesc,
           l_smydesc_4    LIKE smy_file.smydesc,
           l_imd02        LIKE imd_file.imd02,
           l_occ02        LIKE occ_file.occ02,
           l_azp02        LIKE azp_file.azp02,
           l_apydesc_1    LIKE apy_file.apydesc,
           l_apydesc_2    LIKE apy_file.apydesc,
           l_gem02        LIKE gem_file.gem02,
           l_gem02_1      LIKE gem_file.gem02


   IF cl_null(g_pmc.pmc01) THEN
      RETURN
   END IF
   #No.FUN-820034  --Begin
   IF NOT s_dc_ud_flag('5',g_pmc.pmc1920,g_plant,'u') THEN
      CALL cl_err(g_pmc.pmc1920,'aoo-045',1)
      RETURN
   END IF
   #No.FUN-820034  --End
   IF g_pmc.pmc903 = 'N' THEN
      CALL cl_err('','apm-973',0)
      RETURN
   END IF

   INITIALIZE l_pov.* TO NULL
   INITIALIZE l_pov_t.* TO NULL
   LET l_pov.pov01 = '0'

   BEGIN WORK

   LET l_sql = "SELECT * FROM pov_file ",
               " WHERE pov01 = '0'",
               "   AND pov02 = ? "
   PREPARE pov_pre FROM l_sql
   DECLARE pov_cur CURSOR FOR pov_pre

   OPEN pov_cur USING g_pmc.pmc01
   IF STATUS THEN
      CALL cl_err("OPEN pov_cur:", STATUS, 1)
      CLOSE pov_cur
      ROLLBACK WORK
      RETURN
   END IF

   FETCH pov_cur INTO l_pov.*
   IF SQLCA.sqlcode THEN
      IF SQLCA.sqlcode = 100 THEN
        LET l_pov.pov01 = '0'
        LET l_pov.pov02 = g_pmc.pmc01

      ELSE
        CALL cl_err(g_pmc.pmc01,SQLCA.sqlcode,0)
        RETURN
      END IF
   END IF
   LET l_pov_t.* = l_pov.*

   OPEN WINDOW i600_i_w WITH FORM "apm/42f/apmi600i"
       ATTRIBUTE (STYLE = g_win_style CLIPPED)

   CALL cl_ui_locale("apmi600i")

   DISPLAY BY NAME l_pov.pov02,l_pov.pov03,
                   l_pov.pov14,l_pov.pov19,
                   l_pov.pov16,l_pov.pov23,
                   l_pov.pov17,l_pov.pov07,
                   l_pov.pov21,l_pov.pov09,
                   l_pov.pov04,l_pov.pov25,
                   l_pov.pov27


  #Show_desc
   IF NOT cl_null(l_pov.pov02) THEN
      SELECT pmc03 INTO l_pmc03 FROM pmc_file
       WHERE pmc01 = l_pov.pov02
      IF SQLCA.sqlcode THEN LET l_pmc03 = NULL  END IF
   END IF
   IF NOT cl_null(l_pov.pov03) THEN
      SELECT azp02,azp03 INTO l_azp02,l_azp03 FROM azp_file
       WHERE azp01 = l_pov.pov03
      IF SQLCA.sqlcode THEN
         LET l_azp02 = NULL
         LET l_azp03 = NULL
      END IF
   END IF
   IF NOT cl_null(l_pov.pov14) THEN
      SELECT smydesc INTO l_smydesc_1 FROM smy_file
       WHERE smysys = 'apm'
         AND smykind = '2'
         AND smy53 = 'Y'
         AND smyslip = l_pov.pov14
      IF SQLCA.sqlcode THEN LET l_smydesc_1 = NULL  END IF
   END IF
   IF NOT cl_null(l_pov.pov16) THEN
      SELECT smydesc INTO l_smydesc_2 FROM smy_file
       WHERE smysys = 'apm'
         AND smykind = '3'
         AND smy53 = 'Y'
         AND smyslip = l_pov.pov16
      IF SQLCA.sqlcode THEN LET l_smydesc_2 = NULL  END IF
   END IF
   IF NOT cl_null(l_pov.pov17) THEN
      SELECT smydesc INTO l_smydesc_3 FROM smy_file
       WHERE smysys = 'apm'
         AND smykind = '7'
         AND smy53 = 'Y'
         AND smyslip = l_pov.pov17
      IF SQLCA.sqlcode THEN LET l_smydesc_3 = NULL  END IF
   END IF
   IF NOT cl_null(l_pov.pov21) THEN
      SELECT smydesc INTO l_smydesc_4 FROM smy_file
       WHERE smysys = 'apm'
         AND smykind = '4'
         AND smy53 = 'Y'
         AND smyslip = l_pov.pov21
      IF SQLCA.sqlcode THEN LET l_smydesc_4 = NULL  END IF
   END IF
   IF NOT cl_null(l_pov.pov04) THEN
      SELECT imd02 INTO l_imd02 FROM imd_file
       WHERE imd01 = l_pov.pov04
      IF SQLCA.sqlcode THEN LET l_imd02 = NULL  END IF
   END IF
   IF NOT cl_null(l_pov.pov27) THEN
      CALL i600_cur_occ(l_azp03)
      EXECUTE occ_pre USING l_pov.pov27 INTO l_occ02
      IF SQLCA.sqlcode THEN LET l_occ02 = NULL  END IF
   END IF
   IF NOT cl_null(l_pov.pov19) THEN
      SELECT apydesc INTO l_apydesc_1 FROM apy_file
       WHERE apykind = '11'
         AND apyslip = l_pov.pov19
      IF SQLCA.sqlcode THEN LET l_apydesc_1 = NULL  END IF
   END IF
   IF NOT cl_null(l_pov.pov23) THEN
      SELECT apydesc INTO l_apydesc_2 FROM apy_file
       WHERE apykind = '21'
         AND apyslip = l_pov.pov23
      IF SQLCA.sqlcode THEN LET l_apydesc_2 = NULL  END IF
   END IF
   IF NOT cl_null(l_pov.pov09) THEN
      SELECT gem02 INTO l_gem02 FROM gem_file
       WHERE gem01 = l_pov.pov09
      IF SQLCA.sqlcode THEN LET l_gem02 = NULL  END IF
   END IF
   IF NOT cl_null(l_pov.pov25) THEN
      SELECT gem02 INTO l_gem02_1 FROM gem_file
       WHERE gem01 = l_pov.pov25
      IF SQLCA.sqlcode THEN LET l_gem02_1 = NULL  END IF
   END IF


   DISPLAY  l_pmc03      TO  pmc03
   DISPLAY  l_smydesc_1  TO  FORMONLY.smydesc_1
   DISPLAY  l_smydesc_2  TO  FORMONLY.smydesc_2
   DISPLAY  l_smydesc_3  TO  FORMONLY.smydesc_3
   DISPLAY  l_smydesc_4  TO  FORMONLY.smydesc_4
   DISPLAY  l_imd02      TO  imd02
   DISPLAY  l_occ02      TO  occ02
   DISPLAY  l_azp02      TO  azp02
   DISPLAY  l_apydesc_1  TO  FORMONLY.apydesc_1
   DISPLAY  l_apydesc_2  TO  FORMONLY.apydesc_2
   DISPLAY  l_gem02      TO  FORMONLY.gem02
   DISPLAY  l_gem02_1    TO  FORMONLY.gem02_1

   INPUT BY NAME l_pov.pov03,l_pov.pov14,l_pov.pov16,l_pov.pov17,
                 l_pov.pov21,l_pov.pov04,l_pov.pov27,
                 l_pov.pov19,l_pov.pov23,l_pov.pov07,
                 l_pov.pov09,l_pov.pov25   WITHOUT DEFAULTS

      AFTER FIELD pov03
         IF NOT cl_null(l_pov.pov03) THEN
            IF l_pov.pov03 = g_plant THEN
               #對應營運中心不可以和當前營運中心相同
               CALL cl_err(l_pov.pov03,'mfg9186',0)
               NEXT FIELD pov03
            END IF
            IF cl_null(l_pov_t.pov03) OR l_pov_t.pov03 <> l_pov.pov03 THEN
               #CHECK 一個DB只能被一個供應商設定
               LET l_pov02 = NULL
               SELECT pov02 INTO l_pov02 FROM pov_file
                WHERE pov01 = '0' AND pov03 = l_pov.pov03
                  AND pov02 <> l_pov.pov02
               IF NOT cl_null(l_pov02) THEN
                 CALL cl_err(l_pov02,'apm-974',0)
                 NEXT FIELD pov03
               END IF

               SELECT azp02,azp03 INTO l_azp02,l_azp03 FROM azp_file
                WHERE azp01 = l_pov.pov03
               IF SQLCA.sqlcode  THEN
                  CALL cl_err(l_pov.pov03,SQLCA.sqlcode,0)
                  LET l_azp03 = NULL
                  LET l_azp03 = NULL
                  NEXT FIELD pov03
               END IF
               DISPLAY l_azp02 TO FORMONLY.azp02

              #對應營運中心的客戶pov中如有設定本營運中心的，將對應營運中心的pov02帶到pov27
              #LET l_sql = "SELECT pov02 FROM ", l_azp03 CLIPPED,".","pov_file", #TQC-940177
               LET l_sql = "SELECT pov02 FROM ", s_dbstring(l_azp03 CLIPPED),"pov_file", #TQC-940177
                           " WHERE pov01 = '1'",
                           "   AND pov03 = '",g_plant CLIPPED,"'"
	CALL cl_replace_sqldb(l_sql) RETURNING l_sql		#FUN-920032
               PREPARE pov_pre2 FROM  l_sql
               EXECUTE pov_pre2 INTO l_pov02
               IF NOT cl_null(l_pov02) THEN
                 LET l_pov.pov27 = l_pov02
                 CALL i600_cur_occ(l_azp03)
                 EXECUTE occ_pre USING l_pov.pov27 INTO l_occ02
                 DISPLAY l_occ02 TO occ02
               ELSE
                 LET l_pov.pov27 = NULL
                 DISPLAY NULL TO occ02
               END IF
               DISPLAY BY NAME l_pov.pov27
            END IF
         ELSE
            NEXT FIELD pov03
         END IF


      AFTER FIELD pov14 #慣用採購單別
        IF cl_null(l_pov.pov14) THEN
          NEXT FIELD pov14
        ELSE
          IF cl_null(l_pov_t.pov14) OR l_pov_t.pov14 <> l_pov.pov14 THEN
             SELECT smydesc INTO l_smydesc_1 FROM smy_file
              WHERE smysys = 'apm'
                AND smykind = '2'
                AND smy53 = 'Y'
                AND smyslip = l_pov.pov14
             IF SQLCA.sqlcode THEN
                CALL cl_err(l_pov.pov14,SQLCA.sqlcode,0)
                LET l_smydesc_1 = NULL
                NEXT FIELD pov14
             END IF
          END IF
          DISPLAY l_smydesc_1 TO FORMONLY.smydesc_1
        END IF

      AFTER FIELD pov16 #慣用收貨單別
        IF cl_null(l_pov.pov16) THEN
          NEXT FIELD pov16
        ELSE
          IF cl_null(l_pov_t.pov16) OR l_pov_t.pov16 <> l_pov.pov16 THEN
             SELECT smydesc INTO l_smydesc_2 FROM smy_file
              WHERE smysys = 'apm'
                AND smykind = '3'
                AND smy53 = 'Y'
                AND smyslip = l_pov.pov16
             IF SQLCA.sqlcode THEN
                CALL cl_err(l_pov.pov16,SQLCA.sqlcode,0)
                LET l_smydesc_2 = NULL
                NEXT FIELD pov16
             END IF
          END IF
          DISPLAY l_smydesc_2 TO FORMONLY.smydesc_2
        END IF

      AFTER FIELD pov17 #慣用入庫單別
        IF cl_null(l_pov.pov17) THEN
          NEXT FIELD pov17
        ELSE
          IF cl_null(l_pov_t.pov17) OR l_pov_t.pov17 <> l_pov.pov17 THEN
             SELECT smydesc INTO l_smydesc_3 FROM smy_file
              WHERE smysys = 'apm'
                AND smykind = '7'
                AND smy53 = 'Y'
                AND smyslip = l_pov.pov17
             IF SQLCA.sqlcode THEN
                CALL cl_err(l_pov.pov17,SQLCA.sqlcode,0)
                LET l_smydesc_3 = NULL
                NEXT FIELD pov17
             END IF
          END IF
          DISPLAY l_smydesc_3 TO FORMONLY.smydesc_3
        END IF

      AFTER FIELD pov21 #慣用倉退單別
        IF cl_null(l_pov.pov21) THEN
          NEXT FIELD pov21
        ELSE
          IF cl_null(l_pov_t.pov21) OR l_pov_t.pov21 <> l_pov.pov21 THEN
             SELECT smydesc INTO l_smydesc_4 FROM smy_file
             WHERE smysys = 'apm'
               AND smykind = '4'
               AND smy53 = 'Y'
               AND smyslip = l_pov.pov21
             IF SQLCA.sqlcode THEN
                CALL cl_err(l_pov.pov21,SQLCA.sqlcode,0)
                LET l_smydesc_4 = NULL
                NEXT FIELD pov21
             END IF
          END IF
          DISPLAY l_smydesc_4 TO FORMONLY.smydesc_4
        END IF

      AFTER FIELD pov04 #慣用倉庫
        IF cl_null(l_pov.pov04) THEN
          NEXT FIELD pov04
        ELSE
          IF cl_null(l_pov_t.pov04) OR l_pov_t.pov04 <> l_pov.pov04 THEN
             SELECT imd02 INTO l_imd02 FROM imd_file
              WHERE imd01 = l_pov.pov04
             IF SQLCA.sqlcode THEN
                CALL cl_err(l_pov.pov04,SQLCA.sqlcode,0)
                LET l_imd02 = NULL
                NEXT FIELD pov04
             END IF
             DISPLAY l_imd02 TO imd02
          END IF
        END IF

      AFTER FIELD pov19 #慣用AP立帳單別
        IF cl_null(l_pov.pov19) THEN
          NEXT FIELD pov19
        ELSE
          IF cl_null(l_pov_t.pov19) OR l_pov_t.pov19 <> l_pov.pov19 THEN
             SELECT apydesc INTO l_apydesc_1 FROM apy_file
              WHERE apykind = '11'
                AND apyslip = l_pov.pov19
             IF SQLCA.sqlcode THEN
                CALL cl_err(l_pov.pov19,SQLCA.sqlcode,0)
                LET l_apydesc_1 = NULL
                NEXT FIELD pov19
             END IF
             DISPLAY l_apydesc_1 TO FORMONLY.apydesc_1
          END IF
        END IF

      AFTER FIELD pov23 #慣用AP折讓單別
        IF cl_null(l_pov.pov23) THEN
          NEXT FIELD pov23
        ELSE
          IF cl_null(l_pov_t.pov23) OR l_pov_t.pov23 <> l_pov.pov23 THEN
             SELECT apydesc INTO l_apydesc_2 FROM apy_file
              WHERE apykind = '21'
                AND apyslip = l_pov.pov23
             IF SQLCA.sqlcode THEN
                CALL cl_err(l_pov.pov23,SQLCA.sqlcode,0)
                LET l_apydesc_2 = NULL
                NEXT FIELD pov23
             END IF
             DISPLAY l_apydesc_2 TO FORMONLY.apydesc_2
          END IF
        END IF


      AFTER FIELD pov07 #慣用AP科目類型
        IF cl_null(l_pov.pov07) THEN
          NEXT FIELD pov07
        ELSE
          IF cl_null(l_pov_t.pov07) OR l_pov_t.pov07 <> l_pov.pov07 THEN
             SELECT COUNT(*) INTO l_cnt FROM apt_file
              WHERE apt01 = l_pov.pov07
             IF SQLCA.sqlcode OR l_cnt = 0 THEN
                NEXT FIELD pov07
             END IF
          END IF
        END IF


      AFTER FIELD pov09 #慣用部門
        IF cl_null(l_pov.pov09) THEN
          NEXT FIELD pov09
        ELSE
          IF cl_null(l_pov_t.pov09) OR l_pov_t.pov09 <> l_pov.pov09 THEN
             SELECT gem02 INTO l_gem02 FROM gem_file
              WHERE gem01 = l_pov.pov09
                AND gemacti = 'Y'
             IF SQLCA.sqlcode THEN
                CALL cl_err(l_pov.pov09,SQLCA.sqlcode,0)
                LET l_gem02 = NULL
                NEXT FIELD pov09
             END IF
             DISPLAY l_gem02 TO FORMONLY.gem02
          END IF
        END IF

      AFTER FIELD pov25 #慣用成本中心
        IF cl_null(l_pov.pov25) THEN
          NEXT FIELD pov25
        ELSE
          IF cl_null(l_pov_t.pov25) OR l_pov_t.pov25 <> l_pov.pov25 THEN
             SELECT gem02 INTO l_gem02_1 FROM gem_file
              WHERE gem01 = l_pov.pov25
                AND gemacti = 'Y'
             IF SQLCA.sqlcode THEN
                CALL cl_err(l_pov.pov25,SQLCA.sqlcode,0)
                LET l_gem02_1 = NULL
                NEXT FIELD pov25
             END IF
             DISPLAY l_gem02_1 TO FORMONLY.gem02_1
          END IF
        END IF

      AFTER FIELD pov27 #當前法人在對方營運中心的預設客戶編號
        IF cl_null(l_pov.pov27) THEN
          NEXT FIELD pov27
        ELSE
          IF cl_null(l_pov_t.pov27) OR l_pov_t.pov27 <> l_pov.pov27 THEN
             IF cl_null(l_azp03) THEN
               NEXT FIELD pov03
             ELSE
               CALL i600_cur_occ(l_azp03)
               EXECUTE occ_pre USING l_pov.pov27 INTO l_occ02
               IF SQLCA.sqlcode THEN
                  CALL cl_err(l_pov.pov27,SQLCA.sqlcode,0)
                  LET l_occ02 = NULL
                  NEXT FIELD pov27
               END IF
               DISPLAY l_occ02 TO occ02
             END IF
          END IF
        END IF


      ON ACTION CONTROLP
         CASE
            WHEN INFIELD(pov03)
               CALL cl_init_qry_var()
               LET g_qryparam.form = "q_azp"
               LET g_qryparam.default1 = l_pov.pov03
               CALL cl_create_qry() RETURNING l_pov.pov03
               SELECT azp02 INTO l_azp02 FROM azp_file
               WHERE azp01 = l_pov.pov03
               IF SQLCA.sqlcode THEN
                 LET l_azp02 = NULL
               END IF
               DISPLAY BY NAME l_pov.pov03
               DISPLAY l_azp02 TO FORMONLY.azp02

            WHEN INFIELD(pov14)
               CALL cl_init_qry_var()
               LET g_qryparam.form = "q_smy3"
               LET g_qryparam.default1 = l_pov.pov14
               LET g_qryparam.arg1 = 'apm'
               LET g_qryparam.arg2 = '2'
               CALL cl_create_qry() RETURNING l_pov.pov14,l_smydesc_1
               DISPLAY BY NAME l_pov.pov14
               DISPLAY l_smydesc_1 TO FORMONLY.smydesc_1

            WHEN INFIELD(pov16)
               CALL cl_init_qry_var()
               LET g_qryparam.form = "q_smy3"
               LET g_qryparam.default1 = l_pov.pov16
               LET g_qryparam.arg1 = 'apm'
               LET g_qryparam.arg2 = '3'
               CALL cl_create_qry() RETURNING l_pov.pov16,l_smydesc_2
               DISPLAY BY NAME l_pov.pov16
               DISPLAY l_smydesc_2 TO FORMONLY.smydesc_2

            WHEN INFIELD(pov17)
               CALL cl_init_qry_var()
               LET g_qryparam.form = "q_smy3"
               LET g_qryparam.default1 = l_pov.pov17
               LET g_qryparam.arg1 = 'apm'
               LET g_qryparam.arg2 = '7'
               CALL cl_create_qry() RETURNING l_pov.pov17,l_smydesc_3
               DISPLAY BY NAME l_pov.pov17
               DISPLAY l_smydesc_3 TO FORMONLY.smydesc_3

            WHEN INFIELD(pov21)
               CALL cl_init_qry_var()
               LET g_qryparam.form = "q_smy3"
               LET g_qryparam.default1 = l_pov.pov21
               LET g_qryparam.arg1 = 'apm'
               LET g_qryparam.arg2 = '4'
               CALL cl_create_qry() RETURNING l_pov.pov21,l_smydesc_4
               DISPLAY BY NAME l_pov.pov21
               DISPLAY l_smydesc_4 TO FORMONLY.smydesc_4

            WHEN INFIELD(pov04)
               CALL cl_init_qry_var()
               LET g_qryparam.form = "q_imd1"
               LET g_qryparam.default1 = l_pov.pov04
               CALL cl_create_qry() RETURNING l_pov.pov04
               DISPLAY BY NAME l_pov.pov04


            WHEN INFIELD(pov27)
               IF cl_null(l_azp03) THEN RETURN END IF
               CALL cl_init_qry_var()
               LET g_qryparam.form = "q_occ93"
               LET g_qryparam.default1 = l_pov.pov27
               LET g_qryparam.arg1 = l_azp03
               CALL cl_create_qry() RETURNING l_pov.pov27
               DISPLAY BY NAME l_pov.pov27

            WHEN INFIELD(pov19)
               CALL cl_init_qry_var()
               LET g_qryparam.form = "q_apy8"
               LET g_qryparam.default1 = l_pov.pov19
               LET g_qryparam.arg1 = '11'
               CALL cl_create_qry() RETURNING l_pov.pov19,l_apydesc_1
               DISPLAY BY NAME l_pov.pov19
               DISPLAY l_apydesc_1 TO FORMONLY.apydesc_1

            WHEN INFIELD(pov23)
               CALL cl_init_qry_var()
               LET g_qryparam.form = "q_apy8"
               LET g_qryparam.default1 = l_pov.pov23
               LET g_qryparam.arg1 = '21'
               CALL cl_create_qry() RETURNING l_pov.pov23,l_apydesc_2
               DISPLAY BY NAME l_pov.pov23
               DISPLAY l_apydesc_2 TO FORMONLY.apydesc_2

            WHEN INFIELD(pov07)
               CALL cl_init_qry_var()
               LET g_qryparam.form = "q_apt"
               LET g_qryparam.default1 = l_pov.pov07
               CALL cl_create_qry() RETURNING l_pov.pov07,l_pov.pov09
               DISPLAY BY NAME l_pov.pov07,l_pov.pov09

            WHEN INFIELD(pov09)
               CALL cl_init_qry_var()
               LET g_qryparam.form = "q_gem5"
               LET g_qryparam.default1 = l_pov.pov09
               CALL cl_create_qry() RETURNING l_pov.pov09,l_gem02
               DISPLAY BY NAME l_pov.pov09
               DISPLAY l_gem02 TO FORMONLY.gem02

            WHEN INFIELD(pov25)
               CALL cl_init_qry_var()
               LET g_qryparam.form = "q_gem5"
               LET g_qryparam.default1 = l_pov.pov25
               CALL cl_create_qry() RETURNING l_pov.pov25,l_gem02_1
               DISPLAY BY NAME l_pov.pov25
               DISPLAY l_gem02_1 TO FORMONLY.gem02_1

            OTHERWISE EXIT CASE
         END CASE

      ON IDLE g_idle_seconds
         CALL cl_on_idle()
         CONTINUE INPUT

     ON ACTION about
        CALL cl_about()

     ON ACTION help
        CALL cl_show_help()

     ON ACTION controlg
        CALL cl_cmdask()
   END INPUT


   IF INT_FLAG THEN
      LET INT_FLAG=0
      LET l_pov.* = l_pov_t.*
      CALL cl_err('',9001,0)
      CLOSE WINDOW i600_i_w
      RETURN
   END IF

   INSERT INTO pov_file VALUES (l_pov.*)
   IF cl_sql_dup_value(SQLCA.SQLCODE) THEN
      UPDATE pov_file SET pov03 = l_pov.pov03,
                          pov14 = l_pov.pov14,
                          pov16 = l_pov.pov16,
                          pov17 = l_pov.pov17,
                          pov21 = l_pov.pov21,
                          pov04 = l_pov.pov04,
                          pov19 = l_pov.pov19,
                          pov23 = l_pov.pov23,
                          pov07 = l_pov.pov07,
                          pov09 = l_pov.pov09,
                          pov25 = l_pov.pov25,
                          pov27 = l_pov.pov27
             WHERE pov01 = '0'
               AND pov02 = g_pmc.pmc01
   END IF
   IF SQLCA.SQLCODE THEN
      CALL cl_err('update pov',SQLCA.SQLCODE,0)
      ROLLBACK WORK
   ELSE
      COMMIT WORK
   END IF
   CLOSE WINDOW i600_i_w
END FUNCTION
#FUN-7C0004 end

FUNCTION i600_pmc1912()

   LET g_errno = ' '
   SELECT bxr02 INTO g_bxr02_1 FROM bxr_file
      WHERE bxr01 = g_pmc.pmc1912

   IF SQLCA.SQLCODE THEN
      LET g_errno = 'abx-050'
      LET g_bxr02_1 = NULL
   END IF

   DISPLAY g_bxr02_1 TO FORMONLY.reason1

END FUNCTION

FUNCTION i600_pmc1913()

   LET g_errno = ' '
   SELECT bxr02 INTO g_bxr02_2 FROM bxr_file
      WHERE bxr01 = g_pmc.pmc1913

   IF SQLCA.SQLCODE THEN
      LET g_errno = 'abx-050'
      LET g_bxr02_2 = NULL
   END IF

   DISPLAY g_bxr02_2 TO FORMONLY.reason2

END FUNCTION
#FUN-6A0007...............end
#CHI-7B0023/CHI-7B0039

#No.FUN-820034  --Begin
FUNCTION i600_bp(p_ud)
   DEFINE   p_ud   LIKE type_file.chr1

   IF p_ud <> "G" OR g_action_choice = "detail" THEN
      RETURN
   END IF

   LET g_action_choice = " "

   CALL cl_set_act_visible("accept,cancel", FALSE)
   DISPLAY ARRAY g_pmc_l TO s_pmc_l.* ATTRIBUTE(COUNT=g_rec_b1,UNBUFFERED)

      BEFORE DISPLAY
         CALL cl_navigator_setting(g_curs_index, g_row_count)
         #-----MOD-A70076---------
         IF g_rec_b1 != 0 THEN
            CALL fgl_set_arr_curr(g_curs_index)
         END IF
         #-----END MOD-A70076-----

      BEFORE ROW
         LET l_ac1 = ARR_CURR()
         CALL cl_show_fld_cont()

      #NO.FUN-840018 start--
      ON ACTION main
         LET g_bp_flag = 'main'
         LET l_ac1 = ARR_CURR()
         LET g_jump = l_ac1
         LET g_no_ask = TRUE
         IF g_rec_b1 >0 THEN
             CALL i600_fetch('/')
         END IF
         #NO.FUN-840018 mark --------
         #CALL cl_set_comp_visible("page13", FALSE)
         CALL cl_set_comp_visible("info", FALSE)
         #CALL ui.interface.refresh()
         #CALL cl_set_comp_visible("page13", TRUE)
         CALL cl_set_comp_visible("info", TRUE)
         #NO.FUN-840018 mark --------
         #NO.FUN-840018 add --------
         CALL cl_set_comp_visible("page95", FALSE)
	 CALL cl_set_comp_visible("info", FALSE)
         CALL ui.interface.refresh()
         CALL cl_set_comp_visible("page95", TRUE)
         CALL cl_set_comp_visible("info", TRUE)
         EXIT DISPLAY
         #NO.FUN-840018 add --------

      #NO.FUN-840018 start--
      ON ACTION accept
         LET l_ac1 = ARR_CURR()
         LET g_jump = l_ac1
         LET g_no_ask = TRUE
         LET g_bp_flag = NULL
         CALL i600_fetch('/')
         CALL cl_set_comp_visible("page95", FALSE)
         CALL cl_set_comp_visible("info", TRUE)
         CALL ui.interface.refresh()
         CALL cl_set_comp_visible("page95", TRUE)
         CALL cl_set_comp_visible("info", TRUE)
         EXIT DISPLAY
         #NO.FUN-840018 add --------

      ON ACTION next
         CALL i600_fetch('N')
         CALL cl_navigator_setting(g_curs_index, g_row_count)
         IF g_rec_b1 != 0 THEN
            CALL fgl_set_arr_curr(g_curs_index)
         END IF
         CONTINUE DISPLAY

      ON ACTION previous
         CALL i600_fetch('P')
         CALL cl_navigator_setting(g_curs_index, g_row_count)
         IF g_rec_b1 != 0 THEN
            CALL fgl_set_arr_curr(g_curs_index)
         END IF
         CONTINUE DISPLAY
      ON ACTION jump
         CALL i600_fetch('/')
         CALL cl_navigator_setting(g_curs_index, g_row_count)
         IF g_rec_b1 != 0 THEN
            CALL fgl_set_arr_curr(g_curs_index)
         END IF
         CONTINUE DISPLAY

      ON ACTION first
         CALL i600_fetch('F')
         CALL cl_navigator_setting(g_curs_index, g_row_count)
         IF g_rec_b1 != 0 THEN
            CALL fgl_set_arr_curr(g_curs_index)
         END IF
         CONTINUE DISPLAY

      ON ACTION last
         CALL i600_fetch('L')
         CALL cl_navigator_setting(g_curs_index, g_row_count)
         IF g_rec_b1 != 0 THEN
            CALL fgl_set_arr_curr(g_curs_index)
         END IF
         CONTINUE DISPLAY

      #NO.FUN-840018 mark--
      #ON ACTION main_pg
      #   EXIT DISPLAY
      #NO.FUN-840018 mark--

      ON ACTION info_pg
         EXIT DISPLAY

      ON ACTION controlg
         #-----MOD-A70076---------
         #CALL cl_cmdask()
         LET g_action_choice="controlg"
         EXIT DISPLAY
         #-----END MOD-A70076-----

      ON ACTION help
         #-----MOD-A70076---------
         #CALL cl_show_help()
         LET g_action_choice="help"
         EXIT DISPLAY
         #-----END MOD-A70076-----

      ON ACTION locale
         CALL cl_dynamic_locale()
         CALL i600_show_pic()
         CALL cl_show_fld_cont()

      ON ACTION exit
         LET g_action_choice="exit"   #MOD-A70076
         EXIT DISPLAY

      ON IDLE g_idle_seconds
         CALL cl_on_idle()
         CONTINUE DISPLAY

       ON ACTION about
         #-----MOD-A70076---------
         #CALL cl_about()
         LET g_action_choice="about"  
         EXIT DISPLAY
         #-----END MOD-A70076-----

       #-----MOD-A70076---------
       ON ACTION insert
          LET g_action_choice="insert"   
          EXIT DISPLAY

       ON ACTION query
          LET g_action_choice="query"   
          EXIT DISPLAY

       ON ACTION modify
          LET g_action_choice="modify"   
          EXIT DISPLAY

       ON ACTION invalid
          LET g_action_choice="invalid"   
          EXIT DISPLAY

       ON ACTION delete
          LET g_action_choice="delete"   
          EXIT DISPLAY

       ON ACTION reproduce
          LET g_action_choice="reproduce"   
          EXIT DISPLAY

       ON ACTION output
          LET g_action_choice="output"   
          EXIT DISPLAY

       ON ACTION vender_evalu
          LET g_action_choice="vender_evalu"   
          EXIT DISPLAY

       ON ACTION affiliate
          LET g_action_choice="affiliate"   
          EXIT DISPLAY

       ON ACTION bank_list
          LET g_action_choice="bank_list"   
          EXIT DISPLAY

       ON ACTION  carry
          LET g_action_choice="carry"   
          EXIT DISPLAY

       ON ACTION download
          LET g_action_choice="download"   
          EXIT DISPLAY

       ON ACTION qry_carry_history
          LET g_action_choice="qry_carry_history"   
          EXIT DISPLAY

       ON ACTION key_memo
          LET g_action_choice="key_memo"   
          EXIT DISPLAY

       ON ACTION contact
          LET g_action_choice="contact"   
          EXIT DISPLAY

       ON ACTION related_query
          LET g_action_choice="related_query"   
          EXIT DISPLAY

       ON ACTION confirm
          LET g_action_choice="confirm"   
          EXIT DISPLAY

       ON ACTION unconfirm
          LET g_action_choice="unconfirm"   
          EXIT DISPLAY

       ON ACTION hang
          LET g_action_choice="hang"   
          EXIT DISPLAY

       ON ACTION unhang
          LET g_action_choice="unhang"   
          EXIT DISPLAY

       ON ACTION untransaction
          LET g_action_choice="untransaction"   
          EXIT DISPLAY

       ON ACTION transaction
          LET g_action_choice="transaction"   
          EXIT DISPLAY

       ON ACTION abx_maintain
          LET g_action_choice="abx_maintain"   
          EXIT DISPLAY

       ON ACTION internal_trade_data
          LET g_action_choice="internal_trade_data"   
          EXIT DISPLAY

       ON ACTION related_document  
          LET g_action_choice="related_document"   
          EXIT DISPLAY

       #-----END MOD-A70076-----

      #No.FUN-7C0050 add
      &include "qry_string.4gl"
   END DISPLAY
   CALL cl_set_act_visible("accept,cancel", TRUE)
   IF INT_FLAG THEN
      CALL cl_set_comp_visible("page13", FALSE)
      CALL cl_set_comp_visible("info", FALSE)
      CALL ui.interface.refresh()
      CALL cl_set_comp_visible("page13", TRUE)
      CALL cl_set_comp_visible("info", TRUE)
      LET INT_FLAG = 0
   END IF
   #No:FUN-880094---Begin
   SELECT apz61 INTO g_apz.apz61 FROM apz_file
    WHERE apz00 = '0'
   IF g_apz.apz61 = '3' THEN
      CALL cl_set_comp_visible("pmc913", TRUE)
   ELSE
   	  CALL cl_set_comp_visible("pmc913", FALSE)
   END IF
   #No:FUN-880094---End
END FUNCTION

FUNCTION i600_carry()
   DEFINE l_i       LIKE type_file.num10
   DEFINE l_j       LIKE type_file.num10

   #NO.FUN-820028 --Begin--
   IF cl_null(g_pmc.pmc01) THEN
     CALL cl_err('',-400,0)
     RETURN
   END IF
   IF g_pmc.pmcacti <> 'Y' THEN
      CALL cl_err(g_pmc.pmc01,'aoo-090',1)
      RETURN
   END IF
   #NO.FUN-820028  --End--
   IF g_pmc.pmc05 <> '1' THEN
      #不在確認狀態，不可異動！
      CALL cl_err('','atm-053',0)
      RETURN
   END IF

   #input data center
   LET g_gev04 = NULL

   #是否為資料中心的拋轉DB
   SELECT gev04 INTO g_gev04 FROM gev_file
    WHERE gev01 = '5'
      AND gev02 = g_plant
      AND gev03 = 'Y'
   IF SQLCA.sqlcode THEN
      CALL cl_err(g_gev04,'aoo-036',1)
      RETURN
   END IF

#   CALL s_input_gev04('5') RETURNING g_gev04
#   IF INT_FLAG THEN
#     LET INT_FLAG=0
#      RETURN
#   END IF
#   IF cl_null(g_gev04) THEN RETURN END IF

   #開窗選擇拋轉的db清單
   LET g_sql = "SELECT COUNT(*) FROM &pmc_file WHERE pmc01='",g_pmc.pmc01,"'"
   CALL s_dc_sel_db1(g_gev04,'5',g_sql)
   IF INT_FLAG THEN
      LET INT_FLAG=0
      RETURN
   END IF
   FOR l_i=1 TO g_azp1.getlength()
      LET g_azp[l_i].sel  =g_azp1[l_i].sel
      LET g_azp[l_i].azp01=g_azp1[l_i].azp01
      LET g_azp[l_i].azp02=g_azp1[l_i].azp02
      LET g_azp[l_i].azp03=g_azp1[l_i].azp03
   END FOR

   CALL g_pmc_x.clear()
   LET g_pmc_x[1].sel = 'Y'
   LET g_pmc_x[1].pmc01 = g_pmc.pmc01

   CALL s_showmsg_init()
   CALL s_apmi600_carry_pmc(g_pmc_x,g_azp,g_gev04,'0')   #NO.FUN-820028
   CALL s_showmsg()

END FUNCTION

FUNCTION i600_download()
  DEFINE l_path       LIKE ze_file.ze03
  DEFINE l_i          LIKE type_file.num10

   #NO.FUN-840033 start---
   IF cl_null(g_pmc.pmc01) THEN
      CALL cl_err('',-400,0)
      RETURN
   END IF
   CALL g_pmc_x.clear()
   FOR l_i = 1 TO g_pmc_l.getLength()
       LET g_pmc_x[l_i].sel   = 'Y'
       LET g_pmc_x[l_i].pmc01 = g_pmc_l[l_i].pmc01
   END FOR
   #NO.FUN-840033 end------
   CALL s_apmi600_download(g_pmc_x)
END FUNCTION
#MOD-830200



#FUN-9A0056 -- add i650_mes() for MES -----
FUNCTION i600_mes(p_key1,p_key2)
 DEFINE p_key1   VARCHAR(6)
 DEFINE p_key2   VARCHAR(500)
 DEFINE l_mesg01 VARCHAR(30)

 CASE p_key1
    WHEN 'insert'  #新增
         LET l_mesg01 = 'INSERT O.K, INSERT MES O.K'
    WHEN 'update'  #修改
         LET l_mesg01 = 'UPDATE O.K, UPDATE MES O.K'
    WHEN 'delete'  #刪除
         LET l_mesg01 = 'DELETE O.K, DELETE MES O.K'
    OTHERWISE
 END CASE

# CALL aws_mescli
# 傳入參數: (1)程式代號
#           (2)功能選項：insert(新增),update(修改),delete(刪除)
#           (3)Key
 CASE aws_mescli('apmi600',p_key1,p_key2)
    WHEN 1  #呼叫 MES 成功
         MESSAGE l_mesg01
         LET g_success = 'Y'
    WHEN 2  #呼叫 MES 失敗
         LET g_success = 'N'
    OTHERWISE  #其他異常
         LET g_success = 'N'
 END CASE

END FUNCTION
#FUN-9A0056 -- add end----------------------

#No.FUN-A30110  --Begin                                                         
FUNCTION i600_set_pmc03(p_cmd)                                                  
  DEFINE p_cmd   LIKE type_file.chr1                                            
  DEFINE l_cnt   LIKE type_file.num5                                            
  DEFINE l_occ02 LIKE occ_file.occ02                                            
                                                                                
   IF cl_null(g_pmc.pmc01) THEN RETURN END IF                                   
   IF p_cmd <> 'a' THEN RETURN END IF                                           
                                                                                
   SELECT occ02 INTO l_occ02 FROM occ_file                                      
    WHERE occ01 = g_pmc.pmc01                                                   
   IF cl_null(l_occ02) THEN RETURN END IF                                       
   IF NOT cl_null(l_occ02) THEN                                                 
      LET g_pmc.pmc03 = l_occ02                                                 
      DISPLAY BY NAME g_pmc.pmc03
   END IF                                                                       
                                                                                
END FUNCTION                                                                    
#No.FUN-A30110  --End

#-----MOD-A70076---------
FUNCTION i600_b_menu()
   DEFINE   l_priv1   LIKE zy_file.zy03,           # 使用者執行權限
            l_priv2   LIKE zy_file.zy04,           # 使用者資料權限
            l_priv3   LIKE zy_file.zy05            # 使用部門資料權限
   DEFINE   l_cmd     LIKE type_file.chr1000



   WHILE TRUE

      CALL i600_bp("G")  

      IF NOT cl_null(g_action_choice) AND l_ac1>0 THEN #將清單的資料回傳到主畫面
         SELECT pmc_file.ROWID,pmc_file.* 
           INTO g_pmc_rowid,g_pmc.* 
           FROM pmc_file 
          WHERE pmc01=g_pmc_l[l_ac1].pmc01
      END IF

      IF g_action_choice!= "" THEN
         LET g_bp_flag = 'main'
         LET l_ac1 = ARR_CURR()
         LET g_jump = l_ac1
         LET g_no_ask = TRUE
         IF g_rec_b1 >0 THEN
             CALL i600_fetch('/')
         END IF
         CALL cl_set_comp_visible("page95", FALSE)
	 CALL cl_set_comp_visible("info", FALSE)
         CALL ui.interface.refresh()
         CALL cl_set_comp_visible("page95", TRUE)
         CALL cl_set_comp_visible("info", TRUE)
      END IF

      CASE g_action_choice
           WHEN "insert"
              IF g_aza.aza62 = 'N' THEN #不使用廠商申請作業時,才可按新增!
                  IF cl_chk_act_auth() THEN  
                       CALL i600_a()
                  END IF
              ELSE
                  CALL cl_err('','axm-231',1)
                  #不使用廠商申請作業時,才可按新增!
              END IF
              EXIT WHILE

           WHEN "query"
              IF cl_chk_act_auth() THEN
                 CALL i600_q()
              END IF
              EXIT WHILE

           WHEN "modify"
              IF cl_chk_act_auth() THEN
                 LET g_curs_index = ARR_CURR()
                 CALL i600_u()
              END IF
              EXIT WHILE

           WHEN "invalid"
              IF cl_chk_act_auth() THEN
                 CALL i600_x()
              END IF

           WHEN "delete"
              IF cl_chk_act_auth() THEN
                 CALL i600_r()
              END IF

           WHEN "reproduce"
              IF g_aza.aza62 = 'N' THEN 
                  IF cl_chk_act_auth() THEN
                     CALL i600_copy()
                  END IF
              ELSE
                  #參數設定使用廠商申請作業時,不可做複製!
                  CALL cl_err('','aim-155',1)
              END IF

           WHEN "output"
              IF cl_chk_act_auth() THEN
                 CALL i600_out()
              END IF

           WHEN "vender_evalu"
              IF cl_chk_act_auth() THEN
                 IF NOT cl_null(g_pmc.pmc01) THEN
                    CALL sapmi601(g_pmc.pmc01)
                 END IF
              END IF

           WHEN "affiliate"
              IF cl_chk_act_auth() THEN
                 IF NOT cl_null(g_pmc.pmc01) THEN
                    CALL i600_2()
                 END IF
              END IF

           WHEN "bank_list"
              IF cl_chk_act_auth() THEN
                 IF NOT cl_null(g_pmc.pmc01) THEN
                    LET l_cmd = "apmi206 '",g_pmc.pmc01,"'" CLIPPED
                    CALL cl_cmdrun(l_cmd)
                 END IF
              END IF
           
           WHEN "carry"
              IF cl_chk_act_auth() THEN
                 CALL ui.Interface.refresh()
                 CALL i600_carry()
                 ERROR ""
              END IF
           
           WHEN "download"
              IF cl_chk_act_auth() THEN
                 CALL i600_download()
              END IF
           
           WHEN "qry_carry_history"
              IF cl_chk_act_auth() THEN
                IF NOT cl_null(g_pmc.pmc01) THEN       
                 IF NOT cl_null(g_pmc.pmc1920) THEN       #資料來源
                    SELECT gev04 INTO g_gev04 FROM gev_file
                     WHERE gev01 = '5' AND gev02 = g_pmc.pmc1920
                 ELSE      #歷史資料,即沒有ima916的值
                    SELECT gev04 INTO g_gev04 FROM gev_file
                     WHERE gev01 = '5' AND gev02 = g_plant
                 END IF
                 IF NOT cl_null(g_gev04) THEN
                    LET l_cmd='aooq604 "',g_gev04,'" "5" "',g_prog,'" "',g_pmc.pmc01,'"'
                    CALL cl_cmdrun(l_cmd)
                 END IF
               ELSE
                  CALL cl_err('',-400,0)
              END IF        
            END IF
           
           WHEN "key_memo"
              IF cl_chk_act_auth() THEN
                 IF NOT cl_null(g_pmc.pmc01) THEN
                    LET l_cmd = "apmi202 '",g_pmc.pmc01,"'" CLIPPED
                    CALL cl_cmdrun(l_cmd)
                 END IF
              END IF

           WHEN "contact"
              IF cl_chk_act_auth() THEN
                 IF NOT cl_null(g_pmc.pmc01) THEN
                    LET l_cmd = "apmi201 '",g_pmc.pmc01,"'" CLIPPED
                    CALL cl_cmdrun(l_cmd)
                 END IF
              END IF

           WHEN "related_query"
              CALL s_pmcqry(g_pmc.pmc01)
           
           WHEN "confirm"
              IF cl_chk_act_auth() THEN
                 CALL i600_confirm()
                 CALL i600_show_pic()
              END IF
           
           WHEN "unconfirm"
              IF cl_chk_act_auth() THEN
                 CALL i600_unconfirm()
                 CALL i600_show_pic()
              END IF
           
           WHEN "hang"
              IF cl_chk_act_auth() THEN
                 CALL i600_hang()
                 CALL i600_show_pic()
              END IF
           
           WHEN "unhang"
              IF cl_chk_act_auth() THEN
                 CALL i600_unhang()
                 CALL i600_show_pic()
              END IF
           
           WHEN "untransaction"
              IF cl_chk_act_auth() THEN
                 CALL i600_untransaction()
                 CALL i600_show_pic()
              END IF
           
           WHEN "transaction"
              IF cl_chk_act_auth() THEN
                 CALL i600_transaction()
                 CALL i600_show_pic()
              END IF
           
           WHEN "abx_maintain"
              IF cl_chk_act_auth() THEN
                 CALL i600_abx()
              END IF
           WHEN "internal_trade_data"
              IF cl_chk_act_auth() THEN
                 CALL i600_i_t()
              END IF
           
           WHEN "help"
              CALL cl_show_help()
           
           WHEN "locale"
              CALL cl_dynamic_locale()
              CALL cl_show_fld_cont()                   
              CALL cl_set_combo_lang("pmc911")         
              CALL i600_show_pic()                               
           
           WHEN "exit"
              EXIT WHILE

           WHEN "g_idle_seconds"
              CALL cl_on_idle()
           
           WHEN "about"     
              CALL cl_about()   
           
           WHEN "controlg"   
              CALL cl_cmdask()   
           
           WHEN "related_document"  
              IF cl_chk_act_auth() THEN
                  IF g_pmc.pmc01 IS NOT NULL THEN
                     LET g_doc.column1 = "pmc01"
                     LET g_doc.value1 = g_pmc.pmc01
                     CALL cl_doc()
                  END IF
              END IF

           OTHERWISE 
               EXIT WHILE
      END CASE
   END WHILE
END FUNCTION
#-----END MOD-A70076-----
