.class public Lcom/duoku/platform/ui/util/DKDialogUtil;
.super Lcom/duoku/platform/ui/util/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/duoku/platform/ui/util/DKDialogUtil$LoginAdJsBridge;
    }
.end annotation


# static fields
.field private static volatile e:Lcom/duoku/platform/ui/util/DKDialogUtil;


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/duoku/platform/bean/d;",
            ">;"
        }
    .end annotation
.end field

.field b:I

.field private c:Landroid/app/Activity;

.field private d:Landroid/os/Handler;

.field private f:Landroid/app/Dialog;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 105
    const/4 v0, 0x0

    sput-object v0, Lcom/duoku/platform/ui/util/DKDialogUtil;->e:Lcom/duoku/platform/ui/util/DKDialogUtil;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/duoku/platform/ui/util/a;-><init>()V

    .line 111
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/duoku/platform/ui/util/DKDialogUtil;->d:Landroid/os/Handler;

    .line 112
    return-void
.end method

.method public static a(Landroid/content/Context;F)I
    .registers 4

    .prologue
    .line 1580
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 1581
    mul-float/2addr v0, p1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method static synthetic a(Lcom/duoku/platform/ui/util/DKDialogUtil;)Landroid/app/Dialog;
    .registers 2

    .prologue
    .line 1101
    iget-object v0, p0, Lcom/duoku/platform/ui/util/DKDialogUtil;->f:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic a(Lcom/duoku/platform/ui/util/DKDialogUtil;Landroid/app/Dialog;)V
    .registers 2

    .prologue
    .line 1101
    iput-object p1, p0, Lcom/duoku/platform/ui/util/DKDialogUtil;->f:Landroid/app/Dialog;

    return-void
.end method

.method static synthetic b(Lcom/duoku/platform/ui/util/DKDialogUtil;)Landroid/app/Activity;
    .registers 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/duoku/platform/ui/util/DKDialogUtil;->c:Landroid/app/Activity;

    return-object v0
.end method

.method private b(Landroid/content/Context;Lcom/duoku/platform/floatview/DKFloatWindow$LoginAdCallbackListener;)V
    .registers 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled",
            "JavascriptInterface"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1109
    new-instance v0, Landroid/app/Dialog;

    const-string v1, "dk_dialog_style_actionnotice"

    invoke-static {p1, v1}, Lcom/duoku/platform/util/m;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, p1, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/duoku/platform/ui/util/DKDialogUtil;->f:Landroid/app/Dialog;

    .line 1111
    invoke-virtual {p0}, Lcom/duoku/platform/ui/util/DKDialogUtil;->b()Z

    move-result v0

    if-nez v0, :cond_92

    .line 1113
    iget-object v0, p0, Lcom/duoku/platform/ui/util/DKDialogUtil;->f:Landroid/app/Dialog;

    const-string v1, "dk_dialog_actionnotice_h5_port"

    invoke-static {p1, v1}, Lcom/duoku/platform/util/m;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 1120
    :goto_20
    iget-object v0, p0, Lcom/duoku/platform/ui/util/DKDialogUtil;->f:Landroid/app/Dialog;

    const-string v1, "wv_actionnotice_content"

    invoke-static {p1, v1}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    .line 1121
    invoke-static {p1}, Lcom/duoku/platform/util/o;->a(Landroid/content/Context;)Lcom/duoku/platform/util/o;

    move-result-object v1

    const-string v2, "dk_actionanno_actionnoticeurl"

    invoke-virtual {v1, v2}, Lcom/duoku/platform/util/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1123
    iget-object v2, p0, Lcom/duoku/platform/ui/util/DKDialogUtil;->f:Landroid/app/Dialog;

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 1124
    iget-object v2, p0, Lcom/duoku/platform/ui/util/DKDialogUtil;->f:Landroid/app/Dialog;

    new-instance v3, Lcom/duoku/platform/ui/util/DKDialogUtil$20;

    invoke-direct {v3, p0, p1, p2}, Lcom/duoku/platform/ui/util/DKDialogUtil$20;-><init>(Lcom/duoku/platform/ui/util/DKDialogUtil;Landroid/content/Context;Lcom/duoku/platform/floatview/DKFloatWindow$LoginAdCallbackListener;)V

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1143
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    .line 1144
    invoke-virtual {v2, v5}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 1145
    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 1146
    invoke-virtual {v2, v5}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 1147
    invoke-virtual {v2, v5}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 1148
    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 1150
    const-string v2, "#00000000"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 1151
    invoke-virtual {v0, v4}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 1152
    invoke-virtual {v0, v4}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 1153
    new-instance v2, Landroid/webkit/WebChromeClient;

    invoke-direct {v2}, Landroid/webkit/WebChromeClient;-><init>()V

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 1154
    new-instance v2, Landroid/webkit/WebViewClient;

    invoke-direct {v2}, Landroid/webkit/WebViewClient;-><init>()V

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 1155
    new-instance v2, Lcom/duoku/platform/ui/util/DKDialogUtil$LoginAdJsBridge;

    invoke-direct {v2, p0, p1}, Lcom/duoku/platform/ui/util/DKDialogUtil$LoginAdJsBridge;-><init>(Lcom/duoku/platform/ui/util/DKDialogUtil;Landroid/content/Context;)V

    const-string v3, "BaiDuMobileGameJsBridge"

    invoke-virtual {v0, v2, v3}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1156
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9e

    .line 1158
    if-eqz p2, :cond_91

    .line 1160
    invoke-interface {p2}, Lcom/duoku/platform/floatview/DKFloatWindow$LoginAdCallbackListener;->callBack()V

    .line 1166
    :cond_91
    :goto_91
    return-void

    .line 1117
    :cond_92
    iget-object v0, p0, Lcom/duoku/platform/ui/util/DKDialogUtil;->f:Landroid/app/Dialog;

    const-string v1, "dk_dialog_actionnotice_h5_land"

    invoke-static {p1, v1}, Lcom/duoku/platform/util/m;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    goto :goto_20

    .line 1164
    :cond_9e
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 1165
    iget-object v0, p0, Lcom/duoku/platform/ui/util/DKDialogUtil;->f:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_91
.end method

.method public static c()Lcom/duoku/platform/ui/util/DKDialogUtil;
    .registers 2

    .prologue
    .line 116
    sget-object v0, Lcom/duoku/platform/ui/util/DKDialogUtil;->e:Lcom/duoku/platform/ui/util/DKDialogUtil;

    if-nez v0, :cond_13

    .line 118
    const-class v1, Lcom/duoku/platform/ui/util/DKDialogUtil;

    monitor-enter v1

    .line 120
    :try_start_7
    sget-object v0, Lcom/duoku/platform/ui/util/DKDialogUtil;->e:Lcom/duoku/platform/ui/util/DKDialogUtil;

    if-nez v0, :cond_12

    .line 122
    new-instance v0, Lcom/duoku/platform/ui/util/DKDialogUtil;

    invoke-direct {v0}, Lcom/duoku/platform/ui/util/DKDialogUtil;-><init>()V

    sput-object v0, Lcom/duoku/platform/ui/util/DKDialogUtil;->e:Lcom/duoku/platform/ui/util/DKDialogUtil;

    .line 118
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 127
    :cond_13
    sget-object v0, Lcom/duoku/platform/ui/util/DKDialogUtil;->e:Lcom/duoku/platform/ui/util/DKDialogUtil;

    return-object v0

    .line 118
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method private c(Landroid/content/Context;Lcom/duoku/platform/floatview/DKFloatWindow$LoginAdCallbackListener;)V
    .registers 15

    .prologue
    const/4 v11, 0x0

    .line 1170
    new-instance v5, Landroid/app/Dialog;

    const-string v0, "dk_dialog_style_actionnotice"

    invoke-static {p1, v0}, Lcom/duoku/platform/util/m;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-direct {v5, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 1171
    invoke-virtual {v5, v11}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 1172
    new-instance v0, Lcom/duoku/platform/ui/util/DKDialogUtil$21;

    invoke-direct {v0, p0, p2}, Lcom/duoku/platform/ui/util/DKDialogUtil$21;-><init>(Lcom/duoku/platform/ui/util/DKDialogUtil;Lcom/duoku/platform/floatview/DKFloatWindow$LoginAdCallbackListener;)V

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1184
    invoke-virtual {p0}, Lcom/duoku/platform/ui/util/DKDialogUtil;->b()Z

    move-result v0

    if-nez v0, :cond_fc

    .line 1186
    const-string v0, "dk_dialog_actionnotice_port"

    invoke-static {p1, v0}, Lcom/duoku/platform/util/m;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 1193
    :goto_26
    const-string v0, "bd_actionnotice_toptitle"

    invoke-static {p1, v0}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1194
    const-string v1, "bd_actionnotice_actiontime"

    invoke-static {p1, v1}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v5, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1195
    const-string v2, "bd_actionnotice_actioncontent"

    invoke-static {p1, v2}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v5, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/webkit/WebView;

    .line 1196
    const-string v3, "bd_ll_actionnotice_close"

    invoke-static {p1, v3}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v5, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 1197
    const-string v4, "bd_bt_actionnotice_link"

    invoke-static {p1, v4}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v5, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 1199
    invoke-static {p1}, Lcom/duoku/platform/util/o;->a(Landroid/content/Context;)Lcom/duoku/platform/util/o;

    move-result-object v6

    const-string v7, "dk_actionanno_title"

    invoke-virtual {v6, v7}, Lcom/duoku/platform/util/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1200
    invoke-static {p1}, Lcom/duoku/platform/util/o;->a(Landroid/content/Context;)Lcom/duoku/platform/util/o;

    move-result-object v7

    const-string v8, "dk_actionanno_content"

    invoke-virtual {v7, v8}, Lcom/duoku/platform/util/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1201
    invoke-static {p1}, Lcom/duoku/platform/util/o;->a(Landroid/content/Context;)Lcom/duoku/platform/util/o;

    move-result-object v8

    const-string v9, "dk_actionanno_time"

    invoke-virtual {v8, v9}, Lcom/duoku/platform/util/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1202
    invoke-static {p1}, Lcom/duoku/platform/util/o;->a(Landroid/content/Context;)Lcom/duoku/platform/util/o;

    move-result-object v9

    const-string v10, "dk_actionanno_link"

    invoke-virtual {v9, v10}, Lcom/duoku/platform/util/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1204
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1205
    const-string v0, "#"

    const-string v6, "-"

    invoke-virtual {v8, v0, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1206
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const-string v8, "dk_actionnotice_time"

    invoke-static {p1, v8}, Lcom/duoku/platform/util/m;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1207
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v8, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1208
    const-string v0, "\\"

    const-string v1, ""

    invoke-virtual {v7, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1209
    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const-string v6, "UTF-8"

    invoke-virtual {v1, v6}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 1210
    const-string v1, "#00000000"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 1211
    const-string v1, "text/html; charset=UTF-8"

    const/4 v6, 0x0

    invoke-virtual {v2, v0, v1, v6}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1213
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f0

    const-string v0, "http"

    invoke-virtual {v9, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f0

    .line 1215
    invoke-virtual {v4, v11}, Landroid/widget/Button;->setVisibility(I)V

    .line 1216
    new-instance v0, Lcom/duoku/platform/ui/util/DKDialogUtil$2;

    invoke-direct {v0, p0, p1, v9}, Lcom/duoku/platform/ui/util/DKDialogUtil$2;-><init>(Lcom/duoku/platform/ui/util/DKDialogUtil;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1229
    :cond_f0
    new-instance v0, Lcom/duoku/platform/ui/util/DKDialogUtil$3;

    invoke-direct {v0, p0, p1, v5}, Lcom/duoku/platform/ui/util/DKDialogUtil$3;-><init>(Lcom/duoku/platform/ui/util/DKDialogUtil;Landroid/content/Context;Landroid/app/Dialog;)V

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1244
    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    .line 1245
    return-void

    .line 1190
    :cond_fc
    const-string v0, "dk_dialog_actionnotice_land"

    invoke-static {p1, v0}, Lcom/duoku/platform/util/m;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->setContentView(I)V

    goto/16 :goto_26
.end method


# virtual methods
.method public a(Ljava/lang/String;)Landroid/app/Dialog;
    .registers 6

    .prologue
    .line 545
    new-instance v1, Landroid/app/Dialog;

    iget-object v0, p0, Lcom/duoku/platform/ui/util/DKDialogUtil;->c:Landroid/app/Activity;

    iget-object v2, p0, Lcom/duoku/platform/ui/util/DKDialogUtil;->c:Landroid/app/Activity;

    const-string v3, "dk_dialog_style_new"

    invoke-static {v2, v3}, Lcom/duoku/platform/util/m;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-direct {v1, v0, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 547
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 549
    invoke-virtual {p0}, Lcom/duoku/platform/ui/util/DKDialogUtil;->b()Z

    move-result v0

    if-nez v0, :cond_36

    .line 552
    iget-object v0, p0, Lcom/duoku/platform/ui/util/DKDialogUtil;->c:Landroid/app/Activity;

    const-string v2, "dk_payment_layout_dialog_new_portrait"

    invoke-static {v0, v2}, Lcom/duoku/platform/util/m;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 559
    :cond_24
    :goto_24
    iget-object v0, p0, Lcom/duoku/platform/ui/util/DKDialogUtil;->c:Landroid/app/Activity;

    const-string v2, "dk_tv_dialog_tip_info_new"

    invoke-static {v0, v2}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 561
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 563
    return-object v1

    .line 554
    :cond_36
    invoke-virtual {p0}, Lcom/duoku/platform/ui/util/DKDialogUtil;->b()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 556
    iget-object v0, p0, Lcom/duoku/platform/ui/util/DKDialogUtil;->c:Landroid/app/Activity;

    const-string v2, "dk_payment_layout_dialog_new_landscape"

    invoke-static {v0, v2}, Lcom/duoku/platform/util/m;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(I)V

    goto :goto_24
.end method

.method public a(Landroid/app/Activity;)V
    .registers 2

    .prologue
    .line 817
    iput-object p1, p0, Lcom/duoku/platform/ui/util/DKDialogUtil;->c:Landroid/app/Activity;

    .line 818
    return-void
.end method

.method public a(Landroid/app/Activity;Ljava/util/List;D)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Lcom/duoku/platform/bean/c;",
            ">;D)V"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 883
    new-instance v4, Landroid/app/Dialog;

    const-string v0, "dk_dialog_style_notice"

    invoke-static {p1, v0}, Lcom/duoku/platform/util/m;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-direct {v4, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 884
    invoke-virtual {v4, v5}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 886
    invoke-virtual {p0}, Lcom/duoku/platform/ui/util/DKDialogUtil;->b()Z

    move-result v0

    if-nez v0, :cond_8c

    .line 888
    const-string v0, "dk_dialog_errornotice_port"

    invoke-static {p1, v0}, Lcom/duoku/platform/util/m;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v4, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 896
    :goto_1f
    const-string v0, "bd_tv_nexttitle"

    invoke-static {p1, v0}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v4, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 897
    const-string v1, "bd_iv_notice_close"

    invoke-static {p1, v1}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v4, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 898
    const-string v2, "bd_lv_notice"

    invoke-static {p1, v2}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v4, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    .line 899
    new-instance v3, Lcom/duoku/platform/a/h;

    invoke-direct {v3, p1, p2}, Lcom/duoku/platform/a/h;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 901
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v6, :cond_96

    .line 903
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 904
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v3, "\u4e0b\u4e00\u6761\uff1a"

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/duoku/platform/bean/c;

    invoke-virtual {v3}, Lcom/duoku/platform/bean/c;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 911
    :goto_70
    new-instance v3, Lcom/duoku/platform/ui/util/DKDialogUtil$17;

    invoke-direct {v3, p0, p2, v0}, Lcom/duoku/platform/ui/util/DKDialogUtil$17;-><init>(Lcom/duoku/platform/ui/util/DKDialogUtil;Ljava/util/List;Landroid/widget/TextView;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 941
    new-instance v3, Lcom/duoku/platform/ui/util/DKDialogUtil$18;

    invoke-direct {v3, p0, v4}, Lcom/duoku/platform/ui/util/DKDialogUtil$18;-><init>(Lcom/duoku/platform/ui/util/DKDialogUtil;Landroid/app/Dialog;)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 951
    new-instance v1, Lcom/duoku/platform/ui/util/DKDialogUtil$19;

    invoke-direct {v1, p0, v2, v0}, Lcom/duoku/platform/ui/util/DKDialogUtil$19;-><init>(Lcom/duoku/platform/ui/util/DKDialogUtil;Landroid/widget/ListView;Landroid/widget/TextView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 960
    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    .line 961
    return-void

    .line 893
    :cond_8c
    const-string v0, "dk_dialog_errornotice"

    invoke-static {p1, v0}, Lcom/duoku/platform/util/m;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v4, v0}, Landroid/app/Dialog;->setContentView(I)V

    goto :goto_1f

    .line 908
    :cond_96
    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_70
.end method

.method public a(Landroid/content/Context;Lcom/duoku/platform/DkExitListener;Z)V
    .registers 11

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 1497
    new-instance v4, Landroid/app/Dialog;

    const-string v0, "dk_dialog_style_new"

    invoke-static {p1, v0}, Lcom/duoku/platform/util/m;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-direct {v4, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 1499
    invoke-virtual {v4, v5}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 1501
    const-string v0, "dk_dialog_back_default"

    invoke-static {p1, v0}, Lcom/duoku/platform/util/m;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v4, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 1503
    const-string v0, "bd_tv_cancel"

    invoke-static {p1, v0}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v4, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1504
    const-string v1, "bd_tv_exit"

    invoke-static {p1, v1}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v4, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1505
    const-string v2, "bd_rl_hot"

    invoke-static {p1, v2}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v4, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    .line 1506
    const-string v3, "bd_iv_back_close"

    invoke-static {p1, v3}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v4, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 1507
    if-eqz p3, :cond_79

    .line 1510
    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1511
    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1512
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1520
    :goto_55
    new-instance v5, Lcom/duoku/platform/ui/util/DKDialogUtil$10;

    invoke-direct {v5, p0, v4}, Lcom/duoku/platform/ui/util/DKDialogUtil$10;-><init>(Lcom/duoku/platform/ui/util/DKDialogUtil;Landroid/app/Dialog;)V

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1529
    new-instance v3, Lcom/duoku/platform/ui/util/DKDialogUtil$11;

    invoke-direct {v3, p0, v4, p1}, Lcom/duoku/platform/ui/util/DKDialogUtil$11;-><init>(Lcom/duoku/platform/ui/util/DKDialogUtil;Landroid/app/Dialog;Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1555
    new-instance v2, Lcom/duoku/platform/ui/util/DKDialogUtil$13;

    invoke-direct {v2, p0, v4}, Lcom/duoku/platform/ui/util/DKDialogUtil$13;-><init>(Lcom/duoku/platform/ui/util/DKDialogUtil;Landroid/app/Dialog;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1564
    new-instance v0, Lcom/duoku/platform/ui/util/DKDialogUtil$14;

    invoke-direct {v0, p0, v4, p2}, Lcom/duoku/platform/ui/util/DKDialogUtil$14;-><init>(Lcom/duoku/platform/ui/util/DKDialogUtil;Landroid/app/Dialog;Lcom/duoku/platform/DkExitListener;)V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1575
    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    .line 1576
    return-void

    .line 1516
    :cond_79
    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1517
    invoke-virtual {v2, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1518
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_55
.end method

.method public a(Landroid/content/Context;Lcom/duoku/platform/floatview/DKFloatWindow$LoginAdCallbackListener;)V
    .registers 5

    .prologue
    .line 965
    if-nez p1, :cond_3

    .line 998
    :cond_2
    :goto_2
    return-void

    .line 969
    :cond_3
    invoke-static {p1}, Lcom/duoku/platform/util/o;->a(Landroid/content/Context;)Lcom/duoku/platform/util/o;

    move-result-object v0

    const-string v1, "dk_actionanno_actiontype"

    invoke-virtual {v0, v1}, Lcom/duoku/platform/util/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 970
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 972
    if-eqz p2, :cond_2

    .line 974
    invoke-interface {p2}, Lcom/duoku/platform/floatview/DKFloatWindow$LoginAdCallbackListener;->callBack()V

    goto :goto_2

    .line 979
    :cond_19
    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 981
    invoke-direct {p0, p1, p2}, Lcom/duoku/platform/ui/util/DKDialogUtil;->c(Landroid/content/Context;Lcom/duoku/platform/floatview/DKFloatWindow$LoginAdCallbackListener;)V

    .line 995
    :cond_24
    :goto_24
    invoke-static {}, Lcom/duoku/platform/i/a;->a()Lcom/duoku/platform/i/a;

    move-result-object v0

    const-string v1, "73"

    invoke-virtual {v0, v1}, Lcom/duoku/platform/i/a;->a(Ljava/lang/String;)V

    .line 996
    invoke-static {}, Lcom/duoku/platform/i/a;->a()Lcom/duoku/platform/i/a;

    move-result-object v0

    const-string v1, "cp_login_ad_show"

    invoke-virtual {v0, p1, v1}, Lcom/duoku/platform/i/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2

    .line 983
    :cond_37
    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 986
    invoke-direct {p0, p1, p2}, Lcom/duoku/platform/ui/util/DKDialogUtil;->b(Landroid/content/Context;Lcom/duoku/platform/floatview/DKFloatWindow$LoginAdCallbackListener;)V

    goto :goto_24

    .line 990
    :cond_43
    if-eqz p2, :cond_24

    .line 992
    invoke-interface {p2}, Lcom/duoku/platform/floatview/DKFloatWindow$LoginAdCallbackListener;->callBack()V

    goto :goto_24
.end method

.method public a(Landroid/content/Context;Ljava/util/List;ILcom/duoku/platform/DkExitListener;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/duoku/platform/bean/d;",
            ">;I",
            "Lcom/duoku/platform/DkExitListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1253
    new-instance v4, Landroid/app/Dialog;

    const-string v0, "dk_dialog_style_new"

    invoke-static {p1, v0}, Lcom/duoku/platform/util/m;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-direct {v4, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 1254
    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 1255
    const-string v0, "dk_dialog_back"

    invoke-static {p1, v0}, Lcom/duoku/platform/util/m;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v4, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 1256
    const-string v0, "bd_tv_hot"

    invoke-static {p1, v0}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v4, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1257
    const-string v1, "bd_tv_exit"

    invoke-static {p1, v1}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v4, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1258
    const-string v2, "bd_iv_back_close"

    invoke-static {p1, v2}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v4, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 1259
    const/4 v3, 0x0

    iput v3, p0, Lcom/duoku/platform/ui/util/DKDialogUtil;->b:I

    .line 1260
    new-instance v3, Lcom/duoku/platform/ui/util/DKDialogUtil$4;

    invoke-direct {v3, p0, v4}, Lcom/duoku/platform/ui/util/DKDialogUtil$4;-><init>(Lcom/duoku/platform/ui/util/DKDialogUtil;Landroid/app/Dialog;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1268
    new-instance v2, Lcom/duoku/platform/ui/util/DKDialogUtil$5;

    invoke-direct {v2, p0, v4, p1}, Lcom/duoku/platform/ui/util/DKDialogUtil$5;-><init>(Lcom/duoku/platform/ui/util/DKDialogUtil;Landroid/app/Dialog;Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1291
    new-instance v0, Lcom/duoku/platform/ui/util/DKDialogUtil$6;

    invoke-direct {v0, p0, v4, p4}, Lcom/duoku/platform/ui/util/DKDialogUtil$6;-><init>(Lcom/duoku/platform/ui/util/DKDialogUtil;Landroid/app/Dialog;Lcom/duoku/platform/DkExitListener;)V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1301
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1302
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1303
    const-string v0, "bd_ll_dots"

    invoke-static {p1, v0}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v4, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/widget/LinearLayout;

    .line 1305
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/duoku/platform/ui/util/DKDialogUtil;->a:Ljava/util/List;

    .line 1306
    const/4 v3, 0x1

    :goto_76
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    if-lt v3, v0, :cond_b1

    .line 1415
    const/4 v0, 0x1

    if-ne p3, v0, :cond_230

    .line 1417
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const-string v1, "dk_back_dot_selected_red"

    invoke-static {p1, v1}, Lcom/duoku/platform/util/m;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1424
    :goto_91
    const-string v0, "bd_dialog_back_viewpager"

    invoke-static {p1, v0}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v4, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    .line 1425
    new-instance v1, Lcom/duoku/platform/a/g;

    invoke-direct {v1, v7, p1}, Lcom/duoku/platform/a/g;-><init>(Ljava/util/List;Landroid/content/Context;)V

    .line 1426
    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 1428
    new-instance v1, Lcom/duoku/platform/ui/util/DKDialogUtil$9;

    invoke-direct {v1, p0, v8, p3, p1}, Lcom/duoku/platform/ui/util/DKDialogUtil$9;-><init>(Lcom/duoku/platform/ui/util/DKDialogUtil;Ljava/util/List;ILandroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 1492
    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    .line 1493
    return-void

    .line 1308
    :cond_b1
    const/4 v0, 0x2

    if-ne p3, v0, :cond_1b4

    .line 1310
    rem-int/lit8 v0, v3, 0x3

    if-nez v0, :cond_139

    .line 1312
    iget-object v1, p0, Lcom/duoku/platform/ui/util/DKDialogUtil;->a:Ljava/util/List;

    add-int/lit8 v0, v3, -0x1

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/bean/d;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1313
    new-instance v0, Landroid/widget/GridView;

    invoke-direct {v0, p1}, Landroid/widget/GridView;-><init>(Landroid/content/Context;)V

    .line 1314
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v5, -0x1

    invoke-direct {v1, v2, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1315
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 1316
    new-instance v1, Lcom/duoku/platform/a/a;

    iget-object v2, p0, Lcom/duoku/platform/ui/util/DKDialogUtil;->a:Ljava/util/List;

    iget v5, p0, Lcom/duoku/platform/ui/util/DKDialogUtil;->b:I

    invoke-direct {v1, v2, p1, v5, v4}, Lcom/duoku/platform/a/a;-><init>(Ljava/util/List;Landroid/content/Context;ILandroid/app/Dialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1317
    iget v1, p0, Lcom/duoku/platform/ui/util/DKDialogUtil;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/duoku/platform/ui/util/DKDialogUtil;->b:I

    .line 1318
    iget-object v1, p0, Lcom/duoku/platform/ui/util/DKDialogUtil;->a:Ljava/util/List;

    .line 1319
    new-instance v2, Lcom/duoku/platform/ui/util/DKDialogUtil$7;

    invoke-direct {v2, p0, p1, v1}, Lcom/duoku/platform/ui/util/DKDialogUtil$7;-><init>(Lcom/duoku/platform/ui/util/DKDialogUtil;Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1329
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 1330
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x2

    const/4 v9, -0x2

    invoke-direct {v2, v5, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1331
    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {p1, v5}, Lcom/duoku/platform/ui/util/DKDialogUtil;->a(Landroid/content/Context;F)I

    move-result v5

    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1332
    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {p1, v5}, Lcom/duoku/platform/ui/util/DKDialogUtil;->a(Landroid/content/Context;F)I

    move-result v5

    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 1333
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1334
    const-string v2, "dk_back_dot_normal"

    invoke-static {p1, v2}, Lcom/duoku/platform/util/m;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1336
    iget-object v2, p0, Lcom/duoku/platform/ui/util/DKDialogUtil;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v5, 0x3

    if-ne v2, v5, :cond_12e

    .line 1338
    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1339
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1340
    invoke-virtual {v6, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1342
    :cond_12e
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/duoku/platform/ui/util/DKDialogUtil;->a:Ljava/util/List;

    .line 1306
    :cond_135
    :goto_135
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_76

    .line 1347
    :cond_139
    iget-object v1, p0, Lcom/duoku/platform/ui/util/DKDialogUtil;->a:Ljava/util/List;

    add-int/lit8 v0, v3, -0x1

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/bean/d;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1348
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ne v3, v0, :cond_135

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    rem-int/lit8 v1, v3, 0x3

    if-eq v0, v1, :cond_135

    .line 1350
    new-instance v0, Landroid/widget/GridView;

    invoke-direct {v0, p1}, Landroid/widget/GridView;-><init>(Landroid/content/Context;)V

    .line 1351
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v5, -0x1

    invoke-direct {v1, v2, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1352
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 1353
    new-instance v1, Lcom/duoku/platform/a/a;

    iget-object v2, p0, Lcom/duoku/platform/ui/util/DKDialogUtil;->a:Ljava/util/List;

    iget v5, p0, Lcom/duoku/platform/ui/util/DKDialogUtil;->b:I

    invoke-direct {v1, v2, p1, v5, v4}, Lcom/duoku/platform/a/a;-><init>(Ljava/util/List;Landroid/content/Context;ILandroid/app/Dialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1354
    iget v1, p0, Lcom/duoku/platform/ui/util/DKDialogUtil;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/duoku/platform/ui/util/DKDialogUtil;->b:I

    .line 1355
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 1356
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x2

    const/4 v9, -0x2

    invoke-direct {v2, v5, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1357
    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {p1, v5}, Lcom/duoku/platform/ui/util/DKDialogUtil;->a(Landroid/content/Context;F)I

    move-result v5

    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1358
    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {p1, v5}, Lcom/duoku/platform/ui/util/DKDialogUtil;->a(Landroid/content/Context;F)I

    move-result v5

    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 1359
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1360
    const-string v2, "dk_back_dot_normal"

    invoke-static {p1, v2}, Lcom/duoku/platform/util/m;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1361
    iget-object v2, p0, Lcom/duoku/platform/ui/util/DKDialogUtil;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v5, 0x3

    if-ne v2, v5, :cond_135

    .line 1363
    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1364
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1365
    invoke-virtual {v6, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_135

    .line 1373
    :cond_1b4
    new-instance v9, Landroid/widget/ImageView;

    invoke-direct {v9, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 1374
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1375
    const/high16 v1, 0x40a00000    # 5.0f

    invoke-static {p1, v1}, Lcom/duoku/platform/ui/util/DKDialogUtil;->a(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1376
    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {p1, v1}, Lcom/duoku/platform/ui/util/DKDialogUtil;->a(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 1377
    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1378
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1379
    new-instance v0, Lcom/duoku/platform/ui/util/DKDialogUtil$8;

    move-object v1, p0

    move-object v2, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/duoku/platform/ui/util/DKDialogUtil$8;-><init>(Lcom/duoku/platform/ui/util/DKDialogUtil;Ljava/util/List;ILandroid/app/Dialog;Landroid/content/Context;)V

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1401
    new-instance v1, Lcom/duoku/platform/util/i;

    invoke-direct {v1}, Lcom/duoku/platform/util/i;-><init>()V

    .line 1402
    add-int/lit8 v0, v3, -0x1

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/bean/d;

    invoke-virtual {v0}, Lcom/duoku/platform/bean/d;->a()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v9, v2}, Lcom/duoku/platform/util/i;->a(Ljava/lang/String;Landroid/widget/ImageView;I)V

    .line 1403
    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1405
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 1406
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v5, -0x2

    invoke-direct {v1, v2, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1407
    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {p1, v2}, Lcom/duoku/platform/ui/util/DKDialogUtil;->a(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1408
    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {p1, v2}, Lcom/duoku/platform/ui/util/DKDialogUtil;->a(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 1409
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1410
    const-string v1, "dk_back_dot_normal"

    invoke-static {p1, v1}, Lcom/duoku/platform/util/m;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1411
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1412
    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_135

    .line 1421
    :cond_230
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const-string v1, "dk_back_dot_selected"

    invoke-static {p1, v1}, Lcom/duoku/platform/util/m;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_91
.end method

.method public a(Ljava/lang/String;Lcom/duoku/platform/view/user/a;)V
    .registers 9

    .prologue
    const/4 v5, 0x0

    .line 651
    invoke-virtual {p0, p1}, Lcom/duoku/platform/ui/util/DKDialogUtil;->a(Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v2

    .line 652
    iget-object v0, p0, Lcom/duoku/platform/ui/util/DKDialogUtil;->c:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/ui/util/DKDialogUtil;->c:Landroid/app/Activity;

    const-string v3, "dk_dialog_install_left"

    invoke-static {v1, v3}, Lcom/duoku/platform/util/m;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 653
    iget-object v0, p0, Lcom/duoku/platform/ui/util/DKDialogUtil;->c:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/ui/util/DKDialogUtil;->c:Landroid/app/Activity;

    const-string v4, "dk_dialog_method_right"

    invoke-static {v1, v4}, Lcom/duoku/platform/util/m;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 654
    invoke-virtual {v2, v5}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 655
    invoke-virtual {v2, v5}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 656
    iget-object v0, p0, Lcom/duoku/platform/ui/util/DKDialogUtil;->c:Landroid/app/Activity;

    const-string v1, "dk_btn_dialog_back_new"

    invoke-static {v0, v1}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 657
    iget-object v1, p0, Lcom/duoku/platform/ui/util/DKDialogUtil;->c:Landroid/app/Activity;

    const-string v5, "dk_btn_dialog_cancel_new"

    invoke-static {v1, v5}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 658
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 659
    invoke-virtual {v1, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 660
    new-instance v3, Lcom/duoku/platform/ui/util/DKDialogUtil$1;

    invoke-direct {v3, p0, v2}, Lcom/duoku/platform/ui/util/DKDialogUtil$1;-><init>(Lcom/duoku/platform/ui/util/DKDialogUtil;Landroid/app/Dialog;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 669
    new-instance v0, Lcom/duoku/platform/ui/util/DKDialogUtil$12;

    invoke-direct {v0, p0, p2, v2}, Lcom/duoku/platform/ui/util/DKDialogUtil$12;-><init>(Lcom/duoku/platform/ui/util/DKDialogUtil;Lcom/duoku/platform/view/user/a;Landroid/app/Dialog;)V

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 681
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 682
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    .prologue
    const/4 v5, 0x0

    .line 758
    invoke-virtual {p0, p1}, Lcom/duoku/platform/ui/util/DKDialogUtil;->a(Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v2

    .line 759
    iget-object v0, p0, Lcom/duoku/platform/ui/util/DKDialogUtil;->c:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/ui/util/DKDialogUtil;->c:Landroid/app/Activity;

    const-string v3, "dk_dialog_install_left"

    invoke-static {v1, v3}, Lcom/duoku/platform/util/m;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 760
    iget-object v0, p0, Lcom/duoku/platform/ui/util/DKDialogUtil;->c:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/ui/util/DKDialogUtil;->c:Landroid/app/Activity;

    const-string v4, "dk_dialog_install_right"

    invoke-static {v1, v4}, Lcom/duoku/platform/util/m;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 761
    invoke-virtual {v2, v5}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 762
    invoke-virtual {v2, v5}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 763
    iget-object v0, p0, Lcom/duoku/platform/ui/util/DKDialogUtil;->c:Landroid/app/Activity;

    const-string v1, "dk_btn_dialog_back_new"

    invoke-static {v0, v1}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 764
    iget-object v1, p0, Lcom/duoku/platform/ui/util/DKDialogUtil;->c:Landroid/app/Activity;

    const-string v5, "dk_btn_dialog_cancel_new"

    invoke-static {v1, v5}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 765
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 766
    invoke-virtual {v1, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 767
    new-instance v3, Lcom/duoku/platform/ui/util/DKDialogUtil$15;

    invoke-direct {v3, p0, v2}, Lcom/duoku/platform/ui/util/DKDialogUtil$15;-><init>(Lcom/duoku/platform/ui/util/DKDialogUtil;Landroid/app/Dialog;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 776
    new-instance v0, Lcom/duoku/platform/ui/util/DKDialogUtil$16;

    invoke-direct {v0, p0, p3, p2, v2}, Lcom/duoku/platform/ui/util/DKDialogUtil$16;-><init>(Lcom/duoku/platform/ui/util/DKDialogUtil;Ljava/lang/String;Ljava/lang/String;Landroid/app/Dialog;)V

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 812
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 813
    return-void
.end method

.method public d()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 723
    invoke-static {}, Lcom/duoku/platform/f/c;->a()Lcom/duoku/platform/f/a;

    move-result-object v0

    const/16 v1, 0x3ec

    invoke-virtual {v0, v1, v2, v2, v2}, Lcom/duoku/platform/f/a;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 724
    invoke-static {v0}, Lcom/duoku/platform/DKProCallbackListener;->onSessionFailed(Ljava/lang/String;)V

    .line 727
    invoke-virtual {p0}, Lcom/duoku/platform/ui/util/DKDialogUtil;->e()V

    .line 728
    return-void
.end method

.method public e()V
    .registers 3

    .prologue
    .line 736
    iget-object v0, p0, Lcom/duoku/platform/ui/util/DKDialogUtil;->c:Landroid/app/Activity;

    if-eqz v0, :cond_9

    .line 738
    iget-object v0, p0, Lcom/duoku/platform/ui/util/DKDialogUtil;->c:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 744
    :cond_9
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 745
    const-string v1, "com.duoku.close"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 746
    invoke-static {}, Lcom/duoku/platform/b;->c()Lcom/duoku/platform/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duoku/platform/b;->d()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 747
    return-void
.end method
