.class public Lcom/bestpay/plugin/Plugin;
.super Ljava/lang/Object;
.source "Plugin.java"


# static fields
.field public static final ACCOUNTID:Ljava/lang/String; = "ACCOUNTID"

.field public static final ATTACH:Ljava/lang/String; = "ATTACH"

.field public static final ATTACHAMOUNT:Ljava/lang/String; = "ATTACHAMOUNT"

.field public static final BACKMERCHANTURL:Ljava/lang/String; = "BACKMERCHANTURL"

.field public static final BUSITYPE:Ljava/lang/String; = "BUSITYPE"

.field public static final CURTYPE:Ljava/lang/String; = "CURTYPE"

.field public static final CUSTOMERID:Ljava/lang/String; = "CUSTOMERID"

.field public static final DIVDETAILS:Ljava/lang/String; = "DIVDETAILS"

.field private static final ERR_FEILD_ORDAMOUNT:Ljava/lang/String; = "ORDAMOUNT"

.field private static final ERR_FEILD_ORDAMOUNT_LIMIT:Ljava/lang/String; = "ORDAMOUNT_LIMIT"

.field public static final FILTER_APK_VERSION:Ljava/lang/String; = "3.1.0"

.field public static INSTALL_NEEDED:I = 0x0

.field public static final KEY:Ljava/lang/String; = "KEY"

.field private static final LIMIT_BILL_ORDER_AMOUNT:F = 50.0f

.field public static final MAC:Ljava/lang/String; = "MAC"

.field public static final MERCHANTID:Ljava/lang/String; = "MERCHANTID"

.field public static final MERCHANTPHONE:Ljava/lang/String; = "MERCHANTPHONE"

.field public static final MERCHANTPWD:Ljava/lang/String; = "MERCHANTPWD"

.field public static final MERCHANTUSERACOUNT:Ljava/lang/String; = "USERACCOUNT"

.field public static final ORDERAMOUNT:Ljava/lang/String; = "ORDERAMOUNT"

.field public static final ORDERREQTRANSEQ:Ljava/lang/String; = "ORDERREQTRANSEQ"

.field public static final ORDERSEQ:Ljava/lang/String; = "ORDERSEQ"

.field public static final ORDERTIME:Ljava/lang/String; = "ORDERTIME"

.field public static final ORDERVALIDITYTIME:Ljava/lang/String; = "ORDERVALIDITYTIME"

.field public static final OTHERFLOW:Ljava/lang/String; = "OTHERFLOW"

.field public static final PAYTYPE:Ljava/lang/String; = "PAYTYPE"

.field private static final PAY_TYPE_BILLPAY:Ljava/lang/String; = "1"

.field public static final PRODUCTAMOUNT:Ljava/lang/String; = "PRODUCTAMOUNT"

.field public static final PRODUCTDESC:Ljava/lang/String; = "PRODUCTDESC"

.field public static final PRODUCTID:Ljava/lang/String; = "PRODUCTID"

.field public static final REQUEST_BESTPAY_EXCHARGE:I = 0x3e9

.field public static final REQUEST_SUBMIT_ORDER:I = 0x3e8

.field public static final REQUEST_THIRDPART_EXCHARGE:I = 0x3ea

.field public static final SDKVERSIONCODE:Ljava/lang/String; = "SDKVERSIONCODE"

.field public static final SDK_VERSION_CODE:I = 0x1

.field public static final SERVICE:Ljava/lang/String; = "SERVICE"

.field public static final SESSIONKEY:Ljava/lang/String; = "SESSIONKEY"

.field public static final SIGNTYPE:Ljava/lang/String; = "SIGNTYPE"

.field public static final SUBMERCHANTID:Ljava/lang/String; = "SUBMERCHANTID"

.field public static final TAG:Ljava/lang/String; = "Plugin"

.field public static final USERIP:Ljava/lang/String; = "USERIP"

.field public static isUpdate:Z

.field public static mContext:Landroid/content/Context;

.field static p:Lcom/bestpay/plugin/Plugin;

.field static runnable:Ljava/lang/Runnable;


# instance fields
.field public final MESSAGE_SHOW_UPDATE_DIALOG:I

.field public final MESSAGE_SHOW_UPDATE_DOWLOAD:I

.field builder:Landroid/app/AlertDialog$Builder;

.field dialog:Landroid/app/Dialog;

.field handler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 208
    const/4 v0, -0x1

    sput v0, Lcom/bestpay/plugin/Plugin;->INSTALL_NEEDED:I

    .line 218
    const/4 v0, 0x1

    sput-boolean v0, Lcom/bestpay/plugin/Plugin;->isUpdate:Z

    .line 221
    new-instance v0, Lcom/bestpay/plugin/Plugin;

    invoke-direct {v0}, Lcom/bestpay/plugin/Plugin;-><init>()V

    sput-object v0, Lcom/bestpay/plugin/Plugin;->p:Lcom/bestpay/plugin/Plugin;

    .line 456
    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 574
    const/4 v0, 0x1

    iput v0, p0, Lcom/bestpay/plugin/Plugin;->MESSAGE_SHOW_UPDATE_DIALOG:I

    .line 575
    const/4 v0, 0x5

    iput v0, p0, Lcom/bestpay/plugin/Plugin;->MESSAGE_SHOW_UPDATE_DOWLOAD:I

    .line 577
    new-instance v0, Lcom/bestpay/plugin/Plugin$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/bestpay/plugin/Plugin$1;-><init>(Lcom/bestpay/plugin/Plugin;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/bestpay/plugin/Plugin;->handler:Landroid/os/Handler;

    .line 588
    iput-object v2, p0, Lcom/bestpay/plugin/Plugin;->builder:Landroid/app/AlertDialog$Builder;

    .line 589
    iput-object v2, p0, Lcom/bestpay/plugin/Plugin;->dialog:Landroid/app/Dialog;

    .line 33
    return-void
.end method

.method static synthetic access$0(Landroid/content/Intent;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 566
    invoke-static {p0, p1}, Lcom/bestpay/plugin/Plugin;->markErrFeildForIntent(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method private checkUpdterApk(Landroid/content/Context;Lcom/bestpay/plugin/CallBack;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/bestpay/plugin/CallBack;

    .prologue
    .line 652
    new-instance v0, Lcom/bestpay/plugin/CheckApkUpdater;

    invoke-direct {v0, p1}, Lcom/bestpay/plugin/CheckApkUpdater;-><init>(Landroid/content/Context;)V

    .line 653
    .local v0, "cau":Lcom/bestpay/plugin/CheckApkUpdater;
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/bestpay/plugin/Plugin$12;

    invoke-direct {v2, p0, v0, p1, p2}, Lcom/bestpay/plugin/Plugin$12;-><init>(Lcom/bestpay/plugin/Plugin;Lcom/bestpay/plugin/CheckApkUpdater;Landroid/content/Context;Lcom/bestpay/plugin/CallBack;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 682
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 683
    return-void
.end method

.method private static markErrFeildForIntent(Landroid/content/Intent;Ljava/lang/String;)V
    .registers 6
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "feild"    # Ljava/lang/String;

    .prologue
    .line 567
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 568
    .local v0, "msgBundle":Landroid/os/Bundle;
    const-string v1, "error_feild"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    invoke-virtual {p0, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 570
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.chinatelecom.bestpayplugin"

    .line 571
    const-string v3, "com.chinatelecom.bestpayplugin.widget.CheckFailedActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    invoke-virtual {p0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 572
    return-void
.end method

.method public static pay(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "paymentParams"    # Ljava/lang/String;

    .prologue
    .line 239
    sput-object p0, Lcom/bestpay/plugin/Plugin;->mContext:Landroid/content/Context;

    .line 240
    new-instance v0, Lcom/bestpay/plugin/Plugin$2;

    invoke-direct {v0, p1, p0}, Lcom/bestpay/plugin/Plugin$2;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    sput-object v0, Lcom/bestpay/plugin/Plugin;->runnable:Ljava/lang/Runnable;

    .line 263
    sget-object v0, Lcom/bestpay/plugin/Plugin;->p:Lcom/bestpay/plugin/Plugin;

    new-instance v1, Lcom/bestpay/plugin/Plugin$3;

    invoke-direct {v1}, Lcom/bestpay/plugin/Plugin$3;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/bestpay/plugin/Plugin;->checkUpdterApk(Landroid/content/Context;Lcom/bestpay/plugin/CallBack;)V

    .line 273
    return-void
.end method

.method public static pay(Landroid/content/Context;Ljava/util/Hashtable;)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 292
    .local p1, "params":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    sput-object p0, Lcom/bestpay/plugin/Plugin;->mContext:Landroid/content/Context;

    .line 293
    new-instance v0, Lcom/bestpay/plugin/Plugin$4;

    invoke-direct {v0, p1, p0}, Lcom/bestpay/plugin/Plugin$4;-><init>(Ljava/util/Hashtable;Landroid/content/Context;)V

    sput-object v0, Lcom/bestpay/plugin/Plugin;->runnable:Ljava/lang/Runnable;

    .line 444
    sget-object v0, Lcom/bestpay/plugin/Plugin;->p:Lcom/bestpay/plugin/Plugin;

    new-instance v1, Lcom/bestpay/plugin/Plugin$5;

    invoke-direct {v1}, Lcom/bestpay/plugin/Plugin$5;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/bestpay/plugin/Plugin;->checkUpdterApk(Landroid/content/Context;Lcom/bestpay/plugin/CallBack;)V

    .line 454
    return-void
.end method

.method public static userClientRecharge(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneNum"    # Ljava/lang/String;

    .prologue
    .line 535
    sput-object p0, Lcom/bestpay/plugin/Plugin;->mContext:Landroid/content/Context;

    .line 536
    new-instance v0, Lcom/bestpay/plugin/Plugin$8;

    invoke-direct {v0, p1, p0}, Lcom/bestpay/plugin/Plugin$8;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    sput-object v0, Lcom/bestpay/plugin/Plugin;->runnable:Ljava/lang/Runnable;

    .line 554
    sget-object v0, Lcom/bestpay/plugin/Plugin;->p:Lcom/bestpay/plugin/Plugin;

    new-instance v1, Lcom/bestpay/plugin/Plugin$9;

    invoke-direct {v1}, Lcom/bestpay/plugin/Plugin$9;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/bestpay/plugin/Plugin;->checkUpdterApk(Landroid/content/Context;Lcom/bestpay/plugin/CallBack;)V

    .line 564
    return-void
.end method

.method public static yzfClientRecharge(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneNum"    # Ljava/lang/String;

    .prologue
    .line 480
    sput-object p0, Lcom/bestpay/plugin/Plugin;->mContext:Landroid/content/Context;

    .line 481
    new-instance v0, Lcom/bestpay/plugin/Plugin$6;

    invoke-direct {v0, p1, p0}, Lcom/bestpay/plugin/Plugin$6;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    sput-object v0, Lcom/bestpay/plugin/Plugin;->runnable:Ljava/lang/Runnable;

    .line 506
    sget-object v0, Lcom/bestpay/plugin/Plugin;->p:Lcom/bestpay/plugin/Plugin;

    new-instance v1, Lcom/bestpay/plugin/Plugin$7;

    invoke-direct {v1}, Lcom/bestpay/plugin/Plugin$7;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/bestpay/plugin/Plugin;->checkUpdterApk(Landroid/content/Context;Lcom/bestpay/plugin/CallBack;)V

    .line 518
    return-void
.end method


# virtual methods
.method public alertUpdateDialog(Lcom/bestpay/plugin/CallBack;)V
    .registers 5
    .param p1, "callback"    # Lcom/bestpay/plugin/CallBack;

    .prologue
    .line 596
    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v1, Lcom/bestpay/plugin/Plugin;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bestpay/plugin/Plugin;->builder:Landroid/app/AlertDialog$Builder;

    .line 597
    iget-object v0, p0, Lcom/bestpay/plugin/Plugin;->builder:Landroid/app/AlertDialog$Builder;

    const-string v1, "\u7248\u672c\u66f4\u65b0"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 598
    iget-object v0, p0, Lcom/bestpay/plugin/Plugin;->builder:Landroid/app/AlertDialog$Builder;

    const-string v1, "\u53d1\u73b0\u65b0\u7248\u672c\uff0c\u662f\u5426\u8981\u66f4\u65b0\uff1f"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 599
    iget-object v0, p0, Lcom/bestpay/plugin/Plugin;->builder:Landroid/app/AlertDialog$Builder;

    const-string v1, "\u786e\u5b9a"

    new-instance v2, Lcom/bestpay/plugin/Plugin$10;

    invoke-direct {v2, p0, p1}, Lcom/bestpay/plugin/Plugin$10;-><init>(Lcom/bestpay/plugin/Plugin;Lcom/bestpay/plugin/CallBack;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 619
    iget-object v0, p0, Lcom/bestpay/plugin/Plugin;->builder:Landroid/app/AlertDialog$Builder;

    const-string v1, "\u53d6\u6d88"

    new-instance v2, Lcom/bestpay/plugin/Plugin$11;

    invoke-direct {v2, p0}, Lcom/bestpay/plugin/Plugin$11;-><init>(Lcom/bestpay/plugin/Plugin;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 646
    iget-object v0, p0, Lcom/bestpay/plugin/Plugin;->builder:Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 647
    iget-object v0, p0, Lcom/bestpay/plugin/Plugin;->builder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/bestpay/plugin/Plugin;->dialog:Landroid/app/Dialog;

    .line 648
    return-void
.end method
