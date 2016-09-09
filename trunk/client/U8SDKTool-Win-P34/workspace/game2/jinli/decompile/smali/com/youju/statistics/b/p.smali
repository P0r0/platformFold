.class public Lcom/youju/statistics/b/p;
.super Lcom/youju/statistics/b/n;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/youju/statistics/c/g;

.field private c:Lcom/youju/statistics/e/c;

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Lcom/youju/statistics/b/n;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/youju/statistics/b/p;->d:Ljava/util/Map;

    iput-object p1, p0, Lcom/youju/statistics/b/p;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/youju/statistics/b/p;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/youju/statistics/c/g;->a(Landroid/content/Context;)Lcom/youju/statistics/c/g;

    move-result-object v0

    iput-object v0, p0, Lcom/youju/statistics/b/p;->b:Lcom/youju/statistics/c/g;

    iget-object v0, p0, Lcom/youju/statistics/b/p;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/youju/statistics/e/c;->a(Landroid/content/Context;)Lcom/youju/statistics/e/c;

    move-result-object v0

    iput-object v0, p0, Lcom/youju/statistics/b/p;->c:Lcom/youju/statistics/e/c;

    return-void
.end method

.method static synthetic a(Lcom/youju/statistics/b/p;)Lcom/youju/statistics/e/c;
    .registers 2

    iget-object v0, p0, Lcom/youju/statistics/b/p;->c:Lcom/youju/statistics/e/c;

    return-object v0
.end method

.method static synthetic b(Lcom/youju/statistics/b/p;)Lcom/youju/statistics/c/g;
    .registers 2

    iget-object v0, p0, Lcom/youju/statistics/b/p;->b:Lcom/youju/statistics/c/g;

    return-object v0
.end method

.method static synthetic c(Lcom/youju/statistics/b/p;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/youju/statistics/b/p;->a:Landroid/content/Context;

    return-object v0
.end method

.method private c()V
    .registers 1

    invoke-direct {p0}, Lcom/youju/statistics/b/p;->d()V

    return-void
.end method

.method private d()V
    .registers 5

    iget-object v0, p0, Lcom/youju/statistics/b/p;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v3, "session"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_33

    new-instance v1, Lcom/youju/statistics/b/s;

    invoke-direct {v1, p0, v0}, Lcom/youju/statistics/b/s;-><init>(Lcom/youju/statistics/b/p;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/youju/statistics/b/s;->a()V

    goto :goto_a

    :cond_33
    new-instance v3, Lcom/youju/statistics/b/q;

    invoke-direct {v3, p0, v1, v0}, Lcom/youju/statistics/b/q;-><init>(Lcom/youju/statistics/b/p;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/youju/statistics/b/q;->a()V

    goto :goto_a

    :cond_3c
    return-void
.end method

.method private e()Z
    .registers 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/youju/statistics/b/p;->b:Lcom/youju/statistics/c/g;

    invoke-virtual {v1, v0}, Lcom/youju/statistics/c/g;->b(Ljava/util/Map;)V

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_12
    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v3, "-1"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12

    iget-object v3, p0, Lcom/youju/statistics/b/p;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_12

    :cond_36
    iget-object v0, p0, Lcom/youju/statistics/b/p;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-eqz v0, :cond_40

    const/4 v0, 0x1

    :goto_3f
    return v0

    :cond_40
    const/4 v0, 0x0

    goto :goto_3f
.end method


# virtual methods
.method protected a()V
    .registers 2

    invoke-direct {p0}, Lcom/youju/statistics/b/p;->e()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-direct {p0}, Lcom/youju/statistics/b/p;->c()V

    :cond_9
    return-void
.end method

.method protected b()V
    .registers 2

    iget-object v0, p0, Lcom/youju/statistics/b/p;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method
