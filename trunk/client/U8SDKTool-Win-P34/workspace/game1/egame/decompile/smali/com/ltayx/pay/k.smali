.class public Lcom/ltayx/pay/k;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Lcom/ltayx/pay/k;


# instance fields
.field private b:Ldalvik/system/DexClassLoader;

.field private c:Landroid/content/Context;

.field private d:Z

.field private e:Ljava/lang/String;

.field private f:Lcom/ltayx/pay/j;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 26
    const/4 v0, 0x0

    sput-object v0, Lcom/ltayx/pay/k;->a:Lcom/ltayx/pay/k;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object v0, p0, Lcom/ltayx/pay/k;->b:Ldalvik/system/DexClassLoader;

    .line 21
    iput-object v0, p0, Lcom/ltayx/pay/k;->c:Landroid/content/Context;

    .line 22
    iput-boolean v1, p0, Lcom/ltayx/pay/k;->d:Z

    .line 25
    iput-object v0, p0, Lcom/ltayx/pay/k;->f:Lcom/ltayx/pay/j;

    .line 71
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/ltayx/pay/k;->c:Landroid/content/Context;

    .line 72
    iget-object v0, p0, Lcom/ltayx/pay/k;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/ltayx/pay/j;->a(Landroid/content/Context;)Lcom/ltayx/pay/j;

    move-result-object v0

    iput-object v0, p0, Lcom/ltayx/pay/k;->f:Lcom/ltayx/pay/j;

    .line 73
    iput-boolean v1, p0, Lcom/ltayx/pay/k;->d:Z

    .line 75
    invoke-direct {p0}, Lcom/ltayx/pay/k;->d()Z

    .line 76
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/ltayx/pay/k;
    .registers 2

    .prologue
    .line 29
    sget-object v0, Lcom/ltayx/pay/k;->a:Lcom/ltayx/pay/k;

    if-nez v0, :cond_b

    .line 30
    new-instance v0, Lcom/ltayx/pay/k;

    invoke-direct {v0, p0}, Lcom/ltayx/pay/k;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/ltayx/pay/k;->a:Lcom/ltayx/pay/k;

    .line 32
    :cond_b
    sget-object v0, Lcom/ltayx/pay/k;->a:Lcom/ltayx/pay/k;

    return-object v0
.end method

.method private static a(Ljava/io/File;)V
    .registers 6

    .prologue
    .line 125
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 126
    if-eqz v1, :cond_a

    .line 127
    array-length v2, v1

    const/4 v0, 0x0

    :goto_8
    if-lt v0, v2, :cond_b

    .line 133
    :cond_a
    return-void

    .line 127
    :cond_b
    aget-object v3, v1, v0

    .line 128
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_16

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 127
    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_8
.end method

.method private declared-synchronized d()Z
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 84
    monitor-enter p0

    :try_start_2
    iget-boolean v1, p0, Lcom/ltayx/pay/k;->d:Z

    if-eqz v1, :cond_c

    .line 85
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/ltayx/pay/k;->d:Z

    .line 86
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/ltayx/pay/k;->b:Ldalvik/system/DexClassLoader;

    .line 88
    :cond_c
    iget-object v1, p0, Lcom/ltayx/pay/k;->b:Ldalvik/system/DexClassLoader;

    if-nez v1, :cond_43

    .line 89
    iget-object v1, p0, Lcom/ltayx/pay/k;->f:Lcom/ltayx/pay/j;

    invoke-virtual {v1}, Lcom/ltayx/pay/j;->b()Ljava/lang/String;

    move-result-object v1

    .line 91
    iput-object v1, p0, Lcom/ltayx/pay/k;->e:Ljava/lang/String;

    .line 93
    if-eqz v1, :cond_20

    invoke-virtual {v1}, Ljava/lang/String;->length()I
    :try_end_1d
    .catchall {:try_start_2 .. :try_end_1d} :catchall_49

    move-result v2

    if-nez v2, :cond_22

    .line 121
    :cond_20
    :goto_20
    monitor-exit p0

    return v0

    .line 101
    :cond_22
    const/4 v2, 0x0

    :try_start_23
    iput-object v2, p0, Lcom/ltayx/pay/k;->b:Ldalvik/system/DexClassLoader;

    .line 102
    iget-object v2, p0, Lcom/ltayx/pay/k;->c:Landroid/content/Context;

    const-string v3, "dex"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    .line 104
    invoke-static {v2}, Lcom/ltayx/pay/k;->a(Ljava/io/File;)V

    .line 109
    new-instance v3, Ldalvik/system/DexClassLoader;

    .line 110
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    .line 111
    iget-object v5, p0, Lcom/ltayx/pay/k;->c:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-direct {v3, v1, v2, v4, v5}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 109
    iput-object v3, p0, Lcom/ltayx/pay/k;->b:Ldalvik/system/DexClassLoader;
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_43} :catch_4c
    .catchall {:try_start_23 .. :try_end_43} :catchall_49

    .line 118
    :cond_43
    :goto_43
    :try_start_43
    iget-object v1, p0, Lcom/ltayx/pay/k;->b:Ldalvik/system/DexClassLoader;
    :try_end_45
    .catchall {:try_start_43 .. :try_end_45} :catchall_49

    if-eqz v1, :cond_20

    .line 119
    const/4 v0, 0x1

    goto :goto_20

    .line 84
    :catchall_49
    move-exception v0

    monitor-exit p0

    throw v0

    .line 114
    :catch_4c
    move-exception v1

    goto :goto_43
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/Class;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/ltayx/pay/k;->d()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 46
    iget-object v0, p0, Lcom/ltayx/pay/k;->b:Ldalvik/system/DexClassLoader;

    if-eqz v0, :cond_28

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ltayx/pay/k;->f:Lcom/ltayx/pay/j;

    invoke-virtual {v1}, Lcom/ltayx/pay/j;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 50
    iget-object v1, p0, Lcom/ltayx/pay/k;->b:Ldalvik/system/DexClassLoader;

    invoke-virtual {v1, v0}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 53
    :goto_27
    return-object v0

    :cond_28
    const/4 v0, 0x0

    goto :goto_27
.end method

.method public a()V
    .registers 2

    .prologue
    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ltayx/pay/k;->b:Ldalvik/system/DexClassLoader;

    .line 59
    invoke-direct {p0}, Lcom/ltayx/pay/k;->d()Z

    .line 60
    return-void
.end method

.method public b()V
    .registers 2

    .prologue
    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ltayx/pay/k;->d:Z

    .line 64
    return-void
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/ltayx/pay/k;->e:Ljava/lang/String;

    return-object v0
.end method
