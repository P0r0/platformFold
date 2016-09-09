.class public Lcom/huanju/data/a/b;
.super Ljava/lang/Object;


# static fields
.field static a:Z

.field private static final b:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lcom/huanju/data/a/b;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Lcom/huanju/data/a/c;


# instance fields
.field private d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/huanju/data/a/b;->a:Z

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/huanju/data/a/b;->b:Ljava/util/Hashtable;

    const/4 v0, 0x0

    sput-object v0, Lcom/huanju/data/a/b;->c:Lcom/huanju/data/a/c;

    return-void
.end method

.method protected constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/huanju/data/a/b;->d:Ljava/lang/String;

    return-void
.end method

.method public static declared-synchronized a(Ljava/lang/String;)Lcom/huanju/data/a/b;
    .registers 4

    const-class v1, Lcom/huanju/data/a/b;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/huanju/data/a/b;->b:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    sget-object v0, Lcom/huanju/data/a/b;->b:Ljava/util/Hashtable;

    new-instance v2, Lcom/huanju/data/a/b;

    invoke-direct {v2, p0}, Lcom/huanju/data/a/b;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/huanju/data/a/b;->b:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huanju/data/a/b;
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_3e

    :goto_1d
    monitor-exit v1

    return-object v0

    :cond_1f
    :try_start_1f
    sget-object v0, Lcom/huanju/data/a/b;->b:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    sget-object v0, Lcom/huanju/data/a/b;->b:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huanju/data/a/b;

    goto :goto_1d

    :cond_30
    sget-object v0, Lcom/huanju/data/a/b;->c:Lcom/huanju/data/a/c;

    if-nez v0, :cond_3b

    new-instance v0, Lcom/huanju/data/a/c;

    invoke-direct {v0}, Lcom/huanju/data/a/c;-><init>()V

    sput-object v0, Lcom/huanju/data/a/b;->c:Lcom/huanju/data/a/c;

    :cond_3b
    sget-object v0, Lcom/huanju/data/a/b;->c:Lcom/huanju/data/a/c;
    :try_end_3d
    .catchall {:try_start_1f .. :try_end_3d} :catchall_3e

    goto :goto_1d

    :catchall_3e
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a()Z
    .registers 1

    sget-boolean v0, Lcom/huanju/data/a/b;->a:Z

    return v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    sget-boolean v0, Lcom/huanju/data/a/b;->a:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/huanju/data/a/b;->d:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_9
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 3

    sget-boolean v0, Lcom/huanju/data/a/b;->a:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/huanju/data/a/b;->d:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    sget-boolean v0, Lcom/huanju/data/a/b;->a:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/huanju/data/a/b;->d:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_9
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .registers 3

    sget-boolean v0, Lcom/huanju/data/a/b;->a:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/huanju/data/a/b;->d:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .registers 3

    sget-boolean v0, Lcom/huanju/data/a/b;->a:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/huanju/data/a/b;->d:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .registers 3

    sget-boolean v0, Lcom/huanju/data/a/b;->a:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/huanju/data/a/b;->d:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    return-void
.end method
