.class public Lcom/duoku/platform/d/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/duoku/platform/d/a;

.field private b:Lcom/duoku/platform/d/c;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Lcom/duoku/platform/d/a;
    .registers 3

    .prologue
    .line 23
    monitor-enter p0

    .line 25
    :try_start_1
    iget-object v0, p0, Lcom/duoku/platform/d/f;->a:Lcom/duoku/platform/d/a;

    if-nez v0, :cond_c

    .line 27
    new-instance v0, Lcom/duoku/platform/d/b;

    invoke-direct {v0, p1}, Lcom/duoku/platform/d/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/duoku/platform/d/f;->a:Lcom/duoku/platform/d/a;

    .line 23
    :cond_c
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_10

    .line 30
    iget-object v0, p0, Lcom/duoku/platform/d/f;->a:Lcom/duoku/platform/d/a;

    return-object v0

    .line 23
    :catchall_10
    move-exception v0

    :try_start_11
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    throw v0
.end method

.method public b(Landroid/content/Context;)Lcom/duoku/platform/d/c;
    .registers 3

    .prologue
    .line 36
    monitor-enter p0

    .line 38
    :try_start_1
    iget-object v0, p0, Lcom/duoku/platform/d/f;->b:Lcom/duoku/platform/d/c;

    if-nez v0, :cond_c

    .line 40
    new-instance v0, Lcom/duoku/platform/d/d;

    invoke-direct {v0, p1}, Lcom/duoku/platform/d/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/duoku/platform/d/f;->b:Lcom/duoku/platform/d/c;

    .line 36
    :cond_c
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_10

    .line 43
    iget-object v0, p0, Lcom/duoku/platform/d/f;->b:Lcom/duoku/platform/d/c;

    return-object v0

    .line 36
    :catchall_10
    move-exception v0

    :try_start_11
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    throw v0
.end method
