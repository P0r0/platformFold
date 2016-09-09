.class public Lcom/ltayx/pay/services/SmsDataService;
.super Landroid/app/Service;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 20
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 24
    iput-object v0, p0, Lcom/ltayx/pay/services/SmsDataService;->a:Ljava/lang/Class;

    .line 25
    iput-object v0, p0, Lcom/ltayx/pay/services/SmsDataService;->b:Ljava/lang/Object;

    .line 20
    return-void
.end method

.method private a()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 28
    iget-object v0, p0, Lcom/ltayx/pay/services/SmsDataService;->a:Ljava/lang/Class;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/ltayx/pay/services/SmsDataService;->b:Ljava/lang/Object;

    if-nez v0, :cond_21

    .line 31
    :cond_9
    iput-object v1, p0, Lcom/ltayx/pay/services/SmsDataService;->a:Ljava/lang/Class;

    .line 32
    iput-object v1, p0, Lcom/ltayx/pay/services/SmsDataService;->b:Ljava/lang/Object;

    .line 34
    :try_start_d
    invoke-static {p0}, Lcom/ltayx/pay/k;->a(Landroid/content/Context;)Lcom/ltayx/pay/k;

    move-result-object v0

    const-string v1, ".services.SmsDataService"

    invoke-virtual {v0, v1}, Lcom/ltayx/pay/k;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/ltayx/pay/services/SmsDataService;->a:Ljava/lang/Class;

    .line 35
    iget-object v0, p0, Lcom/ltayx/pay/services/SmsDataService;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/ltayx/pay/services/SmsDataService;->b:Ljava/lang/Object;
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_21} :catch_22

    .line 40
    :cond_21
    :goto_21
    return-void

    .line 36
    :catch_22
    move-exception v0

    goto :goto_21
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 7

    .prologue
    .line 94
    iget-object v0, p0, Lcom/ltayx/pay/services/SmsDataService;->a:Ljava/lang/Class;

    if-eqz v0, :cond_24

    .line 96
    :try_start_4
    iget-object v0, p0, Lcom/ltayx/pay/services/SmsDataService;->a:Ljava/lang/Class;

    const-string v1, "onBind"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Intent;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 97
    iget-object v1, p0, Lcom/ltayx/pay/services/SmsDataService;->b:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_22} :catch_23

    .line 102
    :goto_22
    return-object v0

    .line 98
    :catch_23
    move-exception v0

    .line 102
    :cond_24
    const/4 v0, 0x0

    goto :goto_22
.end method

.method public onCreate()V
    .registers 6

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/ltayx/pay/services/SmsDataService;->a()V

    .line 48
    iget-object v0, p0, Lcom/ltayx/pay/services/SmsDataService;->a:Ljava/lang/Class;

    if-eqz v0, :cond_22

    .line 50
    :try_start_7
    iget-object v0, p0, Lcom/ltayx/pay/services/SmsDataService;->a:Ljava/lang/Class;

    const-string v1, "onCreate"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/app/Service;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 51
    iget-object v1, p0, Lcom/ltayx/pay/services/SmsDataService;->b:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_22} :catch_26

    .line 56
    :cond_22
    :goto_22
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 57
    return-void

    .line 52
    :catch_26
    move-exception v0

    goto :goto_22
.end method

.method public onDestroy()V
    .registers 4

    .prologue
    .line 63
    iget-object v0, p0, Lcom/ltayx/pay/services/SmsDataService;->a:Ljava/lang/Class;

    if-eqz v0, :cond_17

    .line 65
    :try_start_4
    iget-object v0, p0, Lcom/ltayx/pay/services/SmsDataService;->a:Ljava/lang/Class;

    const-string v1, "onDestroy"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 66
    iget-object v1, p0, Lcom/ltayx/pay/services/SmsDataService;->b:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_17} :catch_1b

    .line 71
    :cond_17
    :goto_17
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 72
    return-void

    .line 67
    :catch_1b
    move-exception v0

    goto :goto_17
.end method

.method public onStart(Landroid/content/Intent;I)V
    .registers 8

    .prologue
    .line 78
    iget-object v0, p0, Lcom/ltayx/pay/services/SmsDataService;->a:Ljava/lang/Class;

    if-eqz v0, :cond_33

    .line 80
    :try_start_4
    iget-object v0, p0, Lcom/ltayx/pay/services/SmsDataService;->a:Ljava/lang/Class;

    const-string v1, "onStart"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    .line 81
    const-class v4, Landroid/app/Service;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Landroid/content/Intent;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    .line 80
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 82
    iget-object v1, p0, Lcom/ltayx/pay/services/SmsDataService;->b:Ljava/lang/Object;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_33} :catch_37

    .line 87
    :cond_33
    :goto_33
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 88
    return-void

    .line 83
    :catch_37
    move-exception v0

    goto :goto_33
.end method
