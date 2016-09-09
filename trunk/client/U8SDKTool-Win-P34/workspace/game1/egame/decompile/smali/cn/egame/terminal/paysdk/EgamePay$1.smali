.class final Lcn/egame/terminal/paysdk/EgamePay$1;
.super Ljava/lang/Thread;
.source "EgamePay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/egame/terminal/paysdk/EgamePay;->init(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/app/Activity;)V
    .registers 3
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 43
    iput-object p2, p0, Lcn/egame/terminal/paysdk/EgamePay$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 48
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 50
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 51
    .local v4, "start":J
    iget-object v3, p0, Lcn/egame/terminal/paysdk/EgamePay$1;->val$activity:Landroid/app/Activity;

    invoke-static {v3}, Lcn/egame/terminal/sdk/jni/EgamePayProtocol;->initPay(Landroid/content/Context;)Lcn/egame/terminal/sdk/jni/ProtocolMessage;

    move-result-object v2

    .line 52
    .local v2, "result":Lcn/egame/terminal/sdk/jni/ProtocolMessage;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 56
    .local v0, "end":J
    if-eqz v2, :cond_17

    .line 57
    iget v3, v2, Lcn/egame/terminal/sdk/jni/ProtocolMessage;->arg1:I

    sput v3, Lcn/egame/terminal/paysdk/EgamePay;->sInitStatus:I

    .line 59
    :cond_17
    return-void
.end method
