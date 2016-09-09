.class public Lcom/duoku/platform/d/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final b:Ljava/lang/Object;

.field private static c:Lcom/duoku/platform/d/g;


# instance fields
.field a:Lcom/duoku/platform/d/f;

.field private d:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 16
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/duoku/platform/d/g;->b:Ljava/lang/Object;

    .line 17
    return-void
.end method

.method private constructor <init>()V
    .registers 5

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Lcom/duoku/platform/d/f;

    invoke-direct {v0}, Lcom/duoku/platform/d/f;-><init>()V

    iput-object v0, p0, Lcom/duoku/platform/d/g;->a:Lcom/duoku/platform/d/f;

    .line 25
    const-string v0, "GameTingApplication"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DbManager constructor "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " context:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/duoku/platform/download/utils/AppUtil;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    invoke-static {}, Lcom/duoku/platform/download/utils/AppUtil;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/d/g;->d:Landroid/content/Context;

    .line 27
    return-void
.end method

.method public static a()Lcom/duoku/platform/d/a;
    .registers 1

    .prologue
    .line 62
    invoke-static {}, Lcom/duoku/platform/d/g;->c()Lcom/duoku/platform/d/g;

    move-result-object v0

    invoke-direct {v0}, Lcom/duoku/platform/d/g;->d()Lcom/duoku/platform/d/a;

    move-result-object v0

    return-object v0
.end method

.method public static b()Lcom/duoku/platform/d/c;
    .registers 1

    .prologue
    .line 67
    invoke-static {}, Lcom/duoku/platform/d/g;->c()Lcom/duoku/platform/d/g;

    move-result-object v0

    invoke-direct {v0}, Lcom/duoku/platform/d/g;->e()Lcom/duoku/platform/d/c;

    move-result-object v0

    return-object v0
.end method

.method private static c()Lcom/duoku/platform/d/g;
    .registers 2

    .prologue
    .line 32
    sget-object v1, Lcom/duoku/platform/d/g;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 35
    :try_start_3
    sget-object v0, Lcom/duoku/platform/d/g;->c:Lcom/duoku/platform/d/g;

    if-nez v0, :cond_e

    .line 37
    new-instance v0, Lcom/duoku/platform/d/g;

    invoke-direct {v0}, Lcom/duoku/platform/d/g;-><init>()V

    sput-object v0, Lcom/duoku/platform/d/g;->c:Lcom/duoku/platform/d/g;

    .line 32
    :cond_e
    monitor-exit v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_12

    .line 40
    sget-object v0, Lcom/duoku/platform/d/g;->c:Lcom/duoku/platform/d/g;

    return-object v0

    .line 32
    :catchall_12
    move-exception v0

    :try_start_13
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw v0
.end method

.method private d()Lcom/duoku/platform/d/a;
    .registers 3

    .prologue
    .line 48
    iget-object v0, p0, Lcom/duoku/platform/d/g;->a:Lcom/duoku/platform/d/f;

    iget-object v1, p0, Lcom/duoku/platform/d/g;->d:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/duoku/platform/d/f;->a(Landroid/content/Context;)Lcom/duoku/platform/d/a;

    move-result-object v0

    return-object v0
.end method

.method private e()Lcom/duoku/platform/d/c;
    .registers 3

    .prologue
    .line 53
    iget-object v0, p0, Lcom/duoku/platform/d/g;->a:Lcom/duoku/platform/d/f;

    iget-object v1, p0, Lcom/duoku/platform/d/g;->d:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/duoku/platform/d/f;->b(Landroid/content/Context;)Lcom/duoku/platform/d/c;

    move-result-object v0

    return-object v0
.end method
