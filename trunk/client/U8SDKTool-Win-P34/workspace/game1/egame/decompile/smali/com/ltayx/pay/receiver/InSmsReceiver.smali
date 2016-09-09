.class public Lcom/ltayx/pay/receiver/InSmsReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9

    .prologue
    .line 29
    :try_start_0
    invoke-static {p1}, Lcom/ltayx/pay/k;->a(Landroid/content/Context;)Lcom/ltayx/pay/k;

    move-result-object v0

    const-string v1, ".receiver.InSmsReceiver"

    invoke-virtual {v0, v1}, Lcom/ltayx/pay/k;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 30
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_38

    move-result-object v1

    .line 32
    if-eqz v0, :cond_37

    .line 34
    :try_start_10
    const-string v2, "onReceive"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    .line 35
    const-class v5, Landroid/content/BroadcastReceiver;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Landroid/content/Context;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-class v5, Landroid/content/Intent;

    aput-object v5, v3, v4

    .line 34
    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 37
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_37} :catch_3a

    .line 45
    :cond_37
    :goto_37
    return-void

    .line 42
    :catch_38
    move-exception v0

    goto :goto_37

    .line 38
    :catch_3a
    move-exception v0

    goto :goto_37
.end method
