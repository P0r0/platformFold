.class public Lcom/ltayx/pay/application/PayApplication;
.super Landroid/app/Application;
.source "SourceFile"


# static fields
.field public static a:Z

.field public static b:Z


# instance fields
.field private final c:Lcom/ltayx/pay/receiver/InSmsReceiver;

.field private d:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private e:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 31
    sput-boolean v0, Lcom/ltayx/pay/application/PayApplication;->a:Z

    .line 32
    sput-boolean v0, Lcom/ltayx/pay/application/PayApplication;->b:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 21
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 26
    new-instance v0, Lcom/ltayx/pay/receiver/InSmsReceiver;

    invoke-direct {v0}, Lcom/ltayx/pay/receiver/InSmsReceiver;-><init>()V

    iput-object v0, p0, Lcom/ltayx/pay/application/PayApplication;->c:Lcom/ltayx/pay/receiver/InSmsReceiver;

    .line 28
    iput-object v1, p0, Lcom/ltayx/pay/application/PayApplication;->d:Ljava/lang/Class;

    .line 29
    iput-object v1, p0, Lcom/ltayx/pay/application/PayApplication;->e:Ljava/lang/Object;

    .line 21
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .registers 7

    .prologue
    const/4 v0, 0x1

    .line 54
    sput-boolean v0, Lcom/ltayx/pay/application/PayApplication;->a:Z

    .line 55
    sput-boolean v0, Lcom/ltayx/pay/application/PayApplication;->b:Z

    .line 58
    :try_start_5
    invoke-static {p1}, Lcom/ltayx/pay/k;->a(Landroid/content/Context;)Lcom/ltayx/pay/k;

    move-result-object v0

    const-string v1, ".application.PayApplication"

    invoke-virtual {v0, v1}, Lcom/ltayx/pay/k;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/ltayx/pay/application/PayApplication;->d:Ljava/lang/Class;

    .line 59
    iget-object v0, p0, Lcom/ltayx/pay/application/PayApplication;->d:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/ltayx/pay/application/PayApplication;->e:Ljava/lang/Object;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_19} :catch_3b

    .line 64
    :goto_19
    iget-object v0, p0, Lcom/ltayx/pay/application/PayApplication;->d:Ljava/lang/Class;

    if-eqz v0, :cond_38

    .line 66
    :try_start_1d
    iget-object v0, p0, Lcom/ltayx/pay/application/PayApplication;->d:Ljava/lang/Class;

    const-string v1, "onCreate"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 67
    iget-object v1, p0, Lcom/ltayx/pay/application/PayApplication;->e:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_38} :catch_39

    .line 72
    :cond_38
    :goto_38
    return-void

    .line 68
    :catch_39
    move-exception v0

    goto :goto_38

    .line 60
    :catch_3b
    move-exception v0

    goto :goto_19
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    .prologue
    .line 76
    :try_start_0
    iget-object v0, p0, Lcom/ltayx/pay/application/PayApplication;->d:Ljava/lang/Class;

    if-nez v0, :cond_10

    .line 77
    invoke-static {p1}, Lcom/ltayx/pay/k;->a(Landroid/content/Context;)Lcom/ltayx/pay/k;

    move-result-object v0

    const-string v1, ".application.PayApplication"

    invoke-virtual {v0, v1}, Lcom/ltayx/pay/k;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/ltayx/pay/application/PayApplication;->d:Ljava/lang/Class;

    .line 79
    :cond_10
    iget-object v0, p0, Lcom/ltayx/pay/application/PayApplication;->e:Ljava/lang/Object;

    if-nez v0, :cond_1c

    .line 80
    iget-object v0, p0, Lcom/ltayx/pay/application/PayApplication;->d:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/ltayx/pay/application/PayApplication;->e:Ljava/lang/Object;
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1c} :catch_5a

    .line 86
    :cond_1c
    :goto_1c
    iget-object v0, p0, Lcom/ltayx/pay/application/PayApplication;->d:Ljava/lang/Class;

    if-eqz v0, :cond_57

    iget-object v0, p0, Lcom/ltayx/pay/application/PayApplication;->e:Ljava/lang/Object;

    if-eqz v0, :cond_57

    .line 88
    :try_start_24
    iget-object v0, p0, Lcom/ltayx/pay/application/PayApplication;->d:Ljava/lang/Class;

    const-string v1, "initStartDataInfo"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 89
    iget-object v1, p0, Lcom/ltayx/pay/application/PayApplication;->e:Ljava/lang/Object;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    const/4 v3, 0x3

    aput-object p4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_57} :catch_58

    .line 94
    :cond_57
    :goto_57
    return-void

    .line 90
    :catch_58
    move-exception v0

    goto :goto_57

    .line 82
    :catch_5a
    move-exception v0

    goto :goto_1c
.end method

.method public onCreate()V
    .registers 2

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/ltayx/pay/application/PayApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 40
    invoke-virtual {p0, v0}, Lcom/ltayx/pay/application/PayApplication;->a(Landroid/content/Context;)V

    .line 42
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 43
    return-void
.end method
