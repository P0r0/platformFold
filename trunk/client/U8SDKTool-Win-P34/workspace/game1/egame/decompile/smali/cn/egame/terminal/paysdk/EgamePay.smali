.class public Lcn/egame/terminal/paysdk/EgamePay;
.super Ljava/lang/Object;
.source "EgamePay.java"


# static fields
.field public static final PAY_PARAMS_KEY_CP_PARAMS:Ljava/lang/String; = "cpParams"

.field public static final PAY_PARAMS_KEY_PRIORITY:Ljava/lang/String; = "priority"

.field public static final PAY_PARAMS_KEY_TOOLS_ALIAS:Ljava/lang/String; = "toolsAlias"

.field public static final PAY_PARAMS_KEY_TOOLS_NAME:Ljava/lang/String; = "toolsName"

.field public static final PAY_PARAMS_KEY_TOOLS_PRICE:Ljava/lang/String; = "toolsPrice"

.field public static final PAY_PARAMS_KEY_USERID:Ljava/lang/String; = "userId"

.field public static final PAY_PARAMS_KEY_USE_SMSPAY:Ljava/lang/String; = "useSmsPay"

.field public static final PYA_PARAMS_KEY_OTHER_PAY_NOTIFY_URL:Ljava/lang/String; = "otherNotifyUrl"

.field public static sInitStatus:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 26
    const/4 v0, -0x2

    sput v0, Lcn/egame/terminal/paysdk/EgamePay;->sInitStatus:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static exit(Landroid/app/Activity;Lcn/egame/terminal/paysdk/EgameExitListener;)V
    .registers 5
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "listener"    # Lcn/egame/terminal/paysdk/EgameExitListener;

    .prologue
    .line 87
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 88
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "activity"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    const-string v1, "listener"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    const/4 v1, 0x0

    const-string v2, "exit"

    invoke-static {v1, v2, v0}, Lcn/egame/terminal/sdk/jni/EgamePayProtocol;->call(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    .line 91
    return-void
.end method

.method public static init(Landroid/app/Activity;)V
    .registers 3
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 43
    new-instance v0, Lcn/egame/terminal/paysdk/EgamePay$1;

    const-string v1, "ipayt"

    invoke-direct {v0, v1, p0}, Lcn/egame/terminal/paysdk/EgamePay$1;-><init>(Ljava/lang/String;Landroid/app/Activity;)V

    .line 61
    invoke-virtual {v0}, Lcn/egame/terminal/paysdk/EgamePay$1;->start()V

    .line 62
    return-void
.end method

.method public static moreGame(Landroid/app/Activity;)V
    .registers 4
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 99
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 100
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "activity"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    const/4 v1, 0x0

    const-string v2, "moreGame"

    invoke-static {v1, v2, v0}, Lcn/egame/terminal/sdk/jni/EgamePayProtocol;->call(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    .line 102
    return-void
.end method

.method public static pay(Landroid/app/Activity;Ljava/util/Map;Lcn/egame/terminal/paysdk/EgamePayListener;)V
    .registers 4
    .param p0, "activity"    # Landroid/app/Activity;
    .param p2, "listener"    # Lcn/egame/terminal/paysdk/EgamePayListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcn/egame/terminal/paysdk/EgamePayListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 73
    .local p1, "payParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget v0, Lcn/egame/terminal/paysdk/EgamePay;->sInitStatus:I

    if-eqz v0, :cond_a

    .line 74
    sget v0, Lcn/egame/terminal/paysdk/EgamePay;->sInitStatus:I

    invoke-interface {p2, p1, v0}, Lcn/egame/terminal/paysdk/EgamePayListener;->payFailed(Ljava/util/Map;I)V

    .line 79
    :goto_9
    return-void

    .line 78
    :cond_a
    invoke-static {p0, p1, p2}, Lcn/egame/terminal/sdk/jni/EgamePayProtocol;->pay(Landroid/content/Context;Ljava/util/Map;Lcn/egame/terminal/paysdk/EgamePayListener;)V

    goto :goto_9
.end method
