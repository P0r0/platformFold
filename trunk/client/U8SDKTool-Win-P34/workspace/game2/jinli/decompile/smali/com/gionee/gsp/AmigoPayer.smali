.class public Lcom/gionee/gsp/AmigoPayer;
.super Ljava/lang/Object;
.source "AmigoPayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gionee/gsp/AmigoPayer$MyPayCallback;,
        Lcom/gionee/gsp/AmigoPayer$Receiver;,
        Lcom/gionee/gsp/AmigoPayer$ResultCode;
    }
.end annotation


# static fields
.field public static final CODE_ORDER_CREATE_SUCCESS:Ljava/lang/String; = "200010000"

.field public static final LOGIN_REQUEST_CODE:I = 0xd05

.field public static final RESULT_CODE_UPDATE:Ljava/lang/String; = "6000"

.field public static final RESULT_CODE_UPDATE_IS_NOT_GIONEE:Ljava/lang/String; = "6003"

.field public static final STATE_CODE:Ljava/lang/String; = "stateCode"

.field private static final TAG:Ljava/lang/String; = "AmigoPayer"

.field public static final UPGRADE_USING_ACCOUNT_CODE:I = 0x8ae

.field private static sClickTime:J

.field private static sIsInstall:Z

.field private static sStartAutoInstallTime:J


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mGnCommplatformImplForBase:Lcom/gionee/gsp/service/GnCommplatformImplForBase;

.field public mGspFlag:I

.field protected mIsHaveAccount:Z

.field public mIsNeedReCreateOrder:Z

.field protected mIsNeedRePay:Z

.field private mMyPayCallback:Lcom/gionee/gsp/AmigoPayer$MyPayCallback;

.field private mOrderInfo:Ljava/lang/String;

.field private mReceiver:Lcom/gionee/gsp/AmigoPayer$Receiver;

.field protected mResultCodeUpdate:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const-wide/16 v0, 0x0

    .line 72
    sput-wide v0, Lcom/gionee/gsp/AmigoPayer;->sClickTime:J

    .line 75
    sput-wide v0, Lcom/gionee/gsp/AmigoPayer;->sStartAutoInstallTime:J

    .line 77
    const/4 v0, 0x0

    sput-boolean v0, Lcom/gionee/gsp/AmigoPayer;->sIsInstall:Z

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .registers 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const-string v0, ""

    iput-object v0, p0, Lcom/gionee/gsp/AmigoPayer;->mResultCodeUpdate:Ljava/lang/String;

    .line 49
    new-instance v0, Lcom/gionee/gsp/AmigoPayer$Receiver;

    invoke-direct {v0, p0}, Lcom/gionee/gsp/AmigoPayer$Receiver;-><init>(Lcom/gionee/gsp/AmigoPayer;)V

    iput-object v0, p0, Lcom/gionee/gsp/AmigoPayer;->mReceiver:Lcom/gionee/gsp/AmigoPayer$Receiver;

    .line 56
    const/4 v0, 0x1

    iput v0, p0, Lcom/gionee/gsp/AmigoPayer;->mGspFlag:I

    .line 349
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/gionee/gsp/AmigoPayer;->mIsNeedReCreateOrder:Z

    .line 81
    iput-object p1, p0, Lcom/gionee/gsp/AmigoPayer;->mActivity:Landroid/app/Activity;

    .line 83
    iget-object v0, p0, Lcom/gionee/gsp/AmigoPayer;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/gionee/gsp/service/GnCommplatformImplForBase;->getInstance(Landroid/content/Context;)Lcom/gionee/gsp/GnCommplatform;

    move-result-object v0

    .line 82
    check-cast v0, Lcom/gionee/gsp/service/GnCommplatformImplForBase;

    iput-object v0, p0, Lcom/gionee/gsp/AmigoPayer;->mGnCommplatformImplForBase:Lcom/gionee/gsp/service/GnCommplatformImplForBase;

    .line 85
    sget-object v0, Lcom/gionee/gsp/GnEType;->NO_ACCOUNT:Lcom/gionee/gsp/GnEType;

    sget-object v1, Lcom/gionee/gsp/common/GnCommonConfig;->sGnEType:Lcom/gionee/gsp/GnEType;

    invoke-virtual {v0, v1}, Lcom/gionee/gsp/GnEType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 87
    const/4 v0, 0x4

    iput v0, p0, Lcom/gionee/gsp/AmigoPayer;->mGspFlag:I

    .line 89
    :cond_2d
    sget-object v0, Lcom/gionee/gsp/GnEType;->NO_ACCOUNT_BY_CHANNEL:Lcom/gionee/gsp/GnEType;

    sget-object v1, Lcom/gionee/gsp/common/GnCommonConfig;->sGnEType:Lcom/gionee/gsp/GnEType;

    invoke-virtual {v0, v1}, Lcom/gionee/gsp/GnEType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 91
    const/4 v0, 0x5

    iput v0, p0, Lcom/gionee/gsp/AmigoPayer;->mGspFlag:I

    .line 93
    :cond_3a
    return-void
.end method

.method static synthetic access$0(Lcom/gionee/gsp/AmigoPayer;)Landroid/app/Activity;
    .registers 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/gionee/gsp/AmigoPayer;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$1(Lcom/gionee/gsp/AmigoPayer;)Lcom/gionee/gsp/AmigoPayer$Receiver;
    .registers 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/gionee/gsp/AmigoPayer;->mReceiver:Lcom/gionee/gsp/AmigoPayer$Receiver;

    return-object v0
.end method

.method static synthetic access$2(J)V
    .registers 2

    .prologue
    .line 75
    sput-wide p0, Lcom/gionee/gsp/AmigoPayer;->sStartAutoInstallTime:J

    return-void
.end method

.method static synthetic access$3(Z)V
    .registers 1

    .prologue
    .line 77
    sput-boolean p0, Lcom/gionee/gsp/AmigoPayer;->sIsInstall:Z

    return-void
.end method

.method static synthetic access$4()Z
    .registers 1

    .prologue
    .line 77
    sget-boolean v0, Lcom/gionee/gsp/AmigoPayer;->sIsInstall:Z

    return v0
.end method

.method static synthetic access$5()J
    .registers 2

    .prologue
    .line 75
    sget-wide v0, Lcom/gionee/gsp/AmigoPayer;->sStartAutoInstallTime:J

    return-wide v0
.end method

.method static synthetic access$6(Lcom/gionee/gsp/AmigoPayer;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/gionee/gsp/AmigoPayer;->mOrderInfo:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7(Lcom/gionee/gsp/AmigoPayer;)Lcom/gionee/gsp/service/GnCommplatformImplForBase;
    .registers 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/gionee/gsp/AmigoPayer;->mGnCommplatformImplForBase:Lcom/gionee/gsp/service/GnCommplatformImplForBase;

    return-object v0
.end method

.method static synthetic access$8(Lcom/gionee/gsp/AmigoPayer;)Lcom/gionee/gsp/AmigoPayer$MyPayCallback;
    .registers 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/gionee/gsp/AmigoPayer;->mMyPayCallback:Lcom/gionee/gsp/AmigoPayer$MyPayCallback;

    return-object v0
.end method

.method private checkActionTime(Lcom/gionee/gsp/AmigoPayer$MyPayCallback;)Z
    .registers 6
    .param p1, "myPayCallback"    # Lcom/gionee/gsp/AmigoPayer$MyPayCallback;

    .prologue
    .line 164
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/gionee/gsp/AmigoPayer;->sClickTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7d0

    cmp-long v0, v0, v2

    if-gez v0, :cond_19

    .line 165
    const-string v0, "2000\u6beb\u79d2\u4e4b\u5185\u91cd\u590d\u8bf7\u6c42\u652f\u4ed8\uff0c\u5ffd\u7565\u8bf7\u6c42"

    invoke-static {v0}, Lcom/gionee/gsp/util/GnLogUtil;->i(Ljava/lang/String;)V

    .line 166
    const-string v0, "-10001"

    invoke-virtual {p1, v0}, Lcom/gionee/gsp/AmigoPayer$MyPayCallback;->payEnd(Ljava/lang/String;)V

    .line 167
    const/4 v0, 0x0

    .line 170
    :goto_18
    return v0

    .line 169
    :cond_19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/gionee/gsp/AmigoPayer;->sClickTime:J

    .line 170
    const/4 v0, 0x1

    goto :goto_18
.end method

.method private checkIsLogin(Lcom/gionee/gsp/service/account/sdk/listener/IGnUiListener;)Z
    .registers 6
    .param p1, "gnUiListener"    # Lcom/gionee/gsp/service/account/sdk/listener/IGnUiListener;

    .prologue
    const/4 v0, 0x1

    .line 332
    iget-object v1, p0, Lcom/gionee/gsp/AmigoPayer;->mGnCommplatformImplForBase:Lcom/gionee/gsp/service/GnCommplatformImplForBase;

    iget-object v2, p0, Lcom/gionee/gsp/AmigoPayer;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Lcom/gionee/gsp/service/GnCommplatformImplForBase;->isAccountLogin(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_15

    .line 333
    iget-object v1, p0, Lcom/gionee/gsp/AmigoPayer;->mGnCommplatformImplForBase:Lcom/gionee/gsp/service/GnCommplatformImplForBase;

    iget-object v2, p0, Lcom/gionee/gsp/AmigoPayer;->mActivity:Landroid/app/Activity;

    const/16 v3, 0xd05

    invoke-virtual {v1, v2, v3, v0, p1}, Lcom/gionee/gsp/service/GnCommplatformImplForBase;->loginAccount(Landroid/app/Activity;IZLcom/gionee/gsp/service/account/sdk/listener/IGnUiListener;)V

    .line 334
    const/4 v0, 0x0

    .line 336
    :cond_15
    return v0
.end method

.method private isInstallWaitting(Lcom/gionee/gsp/AmigoPayer$MyPayCallback;)Z
    .registers 8
    .param p1, "myPayCallback"    # Lcom/gionee/gsp/AmigoPayer$MyPayCallback;

    .prologue
    const/4 v0, 0x0

    .line 180
    const-string v1, "AmigoPayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/gionee/pay/third/GnCreateOrderUtils;->getThreadName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "-------------1,mIsInstall="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/gionee/gsp/AmigoPayer;->sIsInstall:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    sget-boolean v1, Lcom/gionee/gsp/AmigoPayer;->sIsInstall:Z

    if-nez v1, :cond_4a

    .line 183
    const-string v1, "AmigoPayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/gionee/pay/third/GnCreateOrderUtils;->getThreadName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "-------------2,mIsInstall="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/gionee/gsp/AmigoPayer;->sIsInstall:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    :goto_49
    return v0

    .line 186
    :cond_4a
    const-string v1, "AmigoPayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/gionee/pay/third/GnCreateOrderUtils;->getThreadName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "-------------221,mStartAutoInstallTime="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-wide v4, Lcom/gionee/gsp/AmigoPayer;->sStartAutoInstallTime:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lcom/gionee/gsp/AmigoPayer;->sStartAutoInstallTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3a98

    cmp-long v1, v2, v4

    if-gez v1, :cond_a1

    .line 189
    const-string v0, "AmigoPayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/gionee/pay/third/GnCreateOrderUtils;->getThreadName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "-------------3"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    const-string v0, "15000\u6b63\u5728\u5347\u7ea7\u4e2d\uff0c\u5ffd\u7565\u8bf7\u6c42"

    invoke-static {v0}, Lcom/gionee/gsp/util/GnLogUtil;->i(Ljava/lang/String;)V

    .line 191
    const-string v0, "-10003"

    invoke-virtual {p1, v0}, Lcom/gionee/gsp/AmigoPayer$MyPayCallback;->payEnd(Ljava/lang/String;)V

    .line 192
    const/4 v0, 0x1

    goto :goto_49

    .line 194
    :cond_a1
    const-string v1, "AmigoPayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/gionee/pay/third/GnCreateOrderUtils;->getThreadName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "-------------4"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lcom/gionee/gsp/AmigoPayer;->sStartAutoInstallTime:J

    .line 197
    sput-boolean v0, Lcom/gionee/gsp/AmigoPayer;->sIsInstall:Z

    goto :goto_49
.end method

.method public static readApiKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "apiKey"    # Ljava/lang/String;

    .prologue
    .line 379
    const-string v1, "config"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 380
    .local v0, "preference":Landroid/content/SharedPreferences;
    const-string v1, "apiKey"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static writeApiKey(Landroid/content/Context;Ljava/lang/String;)V
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "apiKey"    # Ljava/lang/String;

    .prologue
    .line 390
    const-string v2, "config"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 391
    .local v1, "preference":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 392
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "apiKey"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 393
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 394
    return-void
.end method


# virtual methods
.method public check(Lcom/gionee/gsp/service/account/sdk/listener/IGnUiListener;)Z
    .registers 3
    .param p1, "gnUiListener"    # Lcom/gionee/gsp/service/account/sdk/listener/IGnUiListener;

    .prologue
    .line 368
    iget-boolean v0, p0, Lcom/gionee/gsp/AmigoPayer;->mIsNeedReCreateOrder:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 274
    :try_start_0
    iget-object v0, p0, Lcom/gionee/gsp/AmigoPayer;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/gionee/gsp/AmigoPayer;->mReceiver:Lcom/gionee/gsp/AmigoPayer$Receiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8

    .line 277
    :goto_7
    return-void

    .line 275
    :catch_8
    move-exception v0

    goto :goto_7
.end method

.method public onResume()V
    .registers 6

    .prologue
    .line 264
    const-string v0, "AmigoPayer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onResume mOrderInfo:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/gionee/gsp/AmigoPayer;->mOrderInfo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    iget-boolean v0, p0, Lcom/gionee/gsp/AmigoPayer;->mIsNeedRePay:Z

    if-eqz v0, :cond_2a

    .line 267
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/gionee/gsp/AmigoPayer;->mIsNeedRePay:Z

    .line 268
    iget-object v0, p0, Lcom/gionee/gsp/AmigoPayer;->mGnCommplatformImplForBase:Lcom/gionee/gsp/service/GnCommplatformImplForBase;

    iget-object v1, p0, Lcom/gionee/gsp/AmigoPayer;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/gionee/gsp/AmigoPayer;->mOrderInfo:Ljava/lang/String;

    iget-object v3, p0, Lcom/gionee/gsp/AmigoPayer;->mMyPayCallback:Lcom/gionee/gsp/AmigoPayer$MyPayCallback;

    iget v4, p0, Lcom/gionee/gsp/AmigoPayer;->mGspFlag:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/gionee/gsp/service/GnCommplatformImplForBase;->pay(Landroid/app/Activity;Ljava/lang/String;Lcom/gionee/pay/gsp/PayCallback;I)V

    .line 270
    :cond_2a
    return-void
.end method

.method public pay(Lcom/gionee/gsp/GnOrderInfo;Lcom/gionee/gsp/AmigoPayer$MyPayCallback;)V
    .registers 4
    .param p1, "orderInfo"    # Lcom/gionee/gsp/GnOrderInfo;
    .param p2, "myPayCallback"    # Lcom/gionee/gsp/AmigoPayer$MyPayCallback;

    .prologue
    .line 106
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, p1, p2, v0}, Lcom/gionee/gsp/AmigoPayer;->pay(Lcom/gionee/gsp/GnOrderInfo;Lcom/gionee/gsp/AmigoPayer$MyPayCallback;Landroid/os/Bundle;)V

    .line 107
    return-void
.end method

.method public pay(Lcom/gionee/gsp/GnOrderInfo;Lcom/gionee/gsp/AmigoPayer$MyPayCallback;Landroid/os/Bundle;)V
    .registers 11
    .param p1, "orderInfo"    # Lcom/gionee/gsp/GnOrderInfo;
    .param p2, "myPayCallback"    # Lcom/gionee/gsp/AmigoPayer$MyPayCallback;
    .param p3, "bundlePara"    # Landroid/os/Bundle;

    .prologue
    .line 142
    invoke-direct {p0, p2}, Lcom/gionee/gsp/AmigoPayer;->checkActionTime(Lcom/gionee/gsp/AmigoPayer$MyPayCallback;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 160
    :cond_6
    :goto_6
    return-void

    .line 146
    :cond_7
    invoke-direct {p0, p2}, Lcom/gionee/gsp/AmigoPayer;->isInstallWaitting(Lcom/gionee/gsp/AmigoPayer$MyPayCallback;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 152
    :try_start_d
    invoke-virtual {p1}, Lcom/gionee/gsp/GnOrderInfo;->getOrderInfo()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gionee/gsp/AmigoPayer;->mOrderInfo:Ljava/lang/String;
    :try_end_13
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_13} :catch_23

    .line 158
    iput-object p2, p0, Lcom/gionee/gsp/AmigoPayer;->mMyPayCallback:Lcom/gionee/gsp/AmigoPayer$MyPayCallback;

    .line 159
    iget-object v0, p0, Lcom/gionee/gsp/AmigoPayer;->mGnCommplatformImplForBase:Lcom/gionee/gsp/service/GnCommplatformImplForBase;

    iget-object v1, p0, Lcom/gionee/gsp/AmigoPayer;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/gionee/gsp/AmigoPayer;->mOrderInfo:Ljava/lang/String;

    iget v5, p0, Lcom/gionee/gsp/AmigoPayer;->mGspFlag:I

    move-object v3, p3

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/gionee/gsp/service/GnCommplatformImplForBase;->pay(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;Lcom/gionee/pay/gsp/PayCallback;I)V

    goto :goto_6

    .line 153
    :catch_23
    move-exception v6

    .line 154
    .local v6, "e":Lorg/json/JSONException;
    invoke-virtual {v6}, Lorg/json/JSONException;->printStackTrace()V

    .line 155
    const-string v0, "-10000"

    invoke-virtual {p2, v0}, Lcom/gionee/gsp/AmigoPayer$MyPayCallback;->payEnd(Ljava/lang/String;)V

    goto :goto_6
.end method

.method public pay(Ljava/lang/String;Lcom/gionee/gsp/AmigoPayer$MyPayCallback;)V
    .registers 7
    .param p1, "orderInfo"    # Ljava/lang/String;
    .param p2, "myPayCallback"    # Lcom/gionee/gsp/AmigoPayer$MyPayCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gionee/gsp/GnException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 111
    invoke-direct {p0, p2}, Lcom/gionee/gsp/AmigoPayer;->checkActionTime(Lcom/gionee/gsp/AmigoPayer$MyPayCallback;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 122
    :cond_6
    :goto_6
    return-void

    .line 114
    :cond_7
    invoke-direct {p0, p2}, Lcom/gionee/gsp/AmigoPayer;->isInstallWaitting(Lcom/gionee/gsp/AmigoPayer$MyPayCallback;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 119
    iput-object p1, p0, Lcom/gionee/gsp/AmigoPayer;->mOrderInfo:Ljava/lang/String;

    .line 120
    iput-object p2, p0, Lcom/gionee/gsp/AmigoPayer;->mMyPayCallback:Lcom/gionee/gsp/AmigoPayer$MyPayCallback;

    .line 121
    iget-object v0, p0, Lcom/gionee/gsp/AmigoPayer;->mGnCommplatformImplForBase:Lcom/gionee/gsp/service/GnCommplatformImplForBase;

    iget-object v1, p0, Lcom/gionee/gsp/AmigoPayer;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/gionee/gsp/AmigoPayer;->mOrderInfo:Ljava/lang/String;

    iget v3, p0, Lcom/gionee/gsp/AmigoPayer;->mGspFlag:I

    invoke-virtual {v0, v1, v2, p2, v3}, Lcom/gionee/gsp/service/GnCommplatformImplForBase;->pay(Landroid/app/Activity;Ljava/lang/String;Lcom/gionee/pay/gsp/PayCallback;I)V

    goto :goto_6
.end method

.method public setActivity(Landroid/app/Activity;)V
    .registers 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/gionee/gsp/AmigoPayer;->mActivity:Landroid/app/Activity;

    .line 98
    return-void
.end method
