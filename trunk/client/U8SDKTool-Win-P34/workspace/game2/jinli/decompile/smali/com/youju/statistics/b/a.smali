.class public Lcom/youju/statistics/b/a;
.super Lcom/youju/statistics/b/n;


# instance fields
.field private a:Z

.field private b:Landroid/content/Context;

.field private c:I

.field private d:Ljava/lang/String;

.field private e:Ljava/util/Map;
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

.field private f:[Lcom/youju/statistics/c/a/n;

.field private g:Lcom/youju/statistics/c/g;

.field private h:Lcom/youju/statistics/c/d/b;

.field private i:Lcom/youju/statistics/c/d/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/youju/statistics/b/n;-><init>()V

    iput-boolean v0, p0, Lcom/youju/statistics/b/a;->a:Z

    iput v0, p0, Lcom/youju/statistics/b/a;->c:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/youju/statistics/b/a;->e:Ljava/util/Map;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/youju/statistics/c/a/n;

    iput-object v0, p0, Lcom/youju/statistics/b/a;->f:[Lcom/youju/statistics/c/a/n;

    new-instance v0, Lcom/youju/statistics/b/k;

    invoke-direct {v0, p0}, Lcom/youju/statistics/b/k;-><init>(Lcom/youju/statistics/b/a;)V

    iput-object v0, p0, Lcom/youju/statistics/b/a;->h:Lcom/youju/statistics/c/d/b;

    new-instance v0, Lcom/youju/statistics/b/j;

    invoke-direct {v0, p0}, Lcom/youju/statistics/b/j;-><init>(Lcom/youju/statistics/b/a;)V

    iput-object v0, p0, Lcom/youju/statistics/b/a;->i:Lcom/youju/statistics/c/d/c;

    iput-object p1, p0, Lcom/youju/statistics/b/a;->b:Landroid/content/Context;

    invoke-static {p1}, Lcom/youju/statistics/c/g;->a(Landroid/content/Context;)Lcom/youju/statistics/c/g;

    move-result-object v0

    iput-object v0, p0, Lcom/youju/statistics/b/a;->g:Lcom/youju/statistics/c/g;

    invoke-direct {p0, p1}, Lcom/youju/statistics/b/a;->a(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/youju/statistics/b/a;I)I
    .registers 2

    iput p1, p0, Lcom/youju/statistics/b/a;->c:I

    return p1
.end method

.method static synthetic a(Lcom/youju/statistics/b/a;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/youju/statistics/b/a;->b:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lcom/youju/statistics/b/a;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/youju/statistics/b/a;->d:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/youju/statistics/b/a;Ljava/util/Map;)Ljava/util/Map;
    .registers 2

    iput-object p1, p0, Lcom/youju/statistics/b/a;->e:Ljava/util/Map;

    return-object p1
.end method

.method private a(Landroid/content/Context;)V
    .registers 8

    new-instance v0, Lcom/youju/statistics/c/a/m;

    invoke-direct {v0, p1}, Lcom/youju/statistics/c/a/m;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/youju/statistics/c/a/l;

    invoke-direct {v1, p1}, Lcom/youju/statistics/c/a/l;-><init>(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/youju/statistics/c/c/c;->a(Landroid/content/Context;)Lcom/youju/statistics/c/c/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/youju/statistics/c/c/c;->c()Lcom/youju/statistics/c/c/d;

    move-result-object v2

    new-instance v3, Lcom/youju/statistics/c/a/q;

    invoke-virtual {v2}, Lcom/youju/statistics/c/c/d;->j()Z

    move-result v2

    invoke-direct {v3, p1, v2}, Lcom/youju/statistics/c/a/q;-><init>(Landroid/content/Context;Z)V

    new-instance v2, Lcom/youju/statistics/c/a/e;

    invoke-direct {v2, p1}, Lcom/youju/statistics/c/a/e;-><init>(Landroid/content/Context;)V

    iget-object v4, p0, Lcom/youju/statistics/b/a;->f:[Lcom/youju/statistics/c/a/n;

    invoke-virtual {v0}, Lcom/youju/statistics/c/a/m;->e()I

    move-result v5

    aput-object v0, v4, v5

    iget-object v0, p0, Lcom/youju/statistics/b/a;->f:[Lcom/youju/statistics/c/a/n;

    invoke-virtual {v1}, Lcom/youju/statistics/c/a/l;->e()I

    move-result v4

    aput-object v1, v0, v4

    iget-object v0, p0, Lcom/youju/statistics/b/a;->f:[Lcom/youju/statistics/c/a/n;

    invoke-virtual {v3}, Lcom/youju/statistics/c/a/q;->e()I

    move-result v1

    aput-object v3, v0, v1

    iget-object v0, p0, Lcom/youju/statistics/b/a;->f:[Lcom/youju/statistics/c/a/n;

    invoke-virtual {v2}, Lcom/youju/statistics/c/a/e;->e()I

    move-result v1

    aput-object v2, v0, v1

    return-void
.end method

.method static synthetic a(Lcom/youju/statistics/b/a;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/youju/statistics/b/a;->a:Z

    return p1
.end method

.method static synthetic b(Lcom/youju/statistics/b/a;)Lcom/youju/statistics/c/d/c;
    .registers 2

    iget-object v0, p0, Lcom/youju/statistics/b/a;->i:Lcom/youju/statistics/c/d/c;

    return-object v0
.end method

.method private c()V
    .registers 7

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget-object v2, p0, Lcom/youju/statistics/b/a;->f:[Lcom/youju/statistics/c/a/n;

    array-length v3, v2

    const/4 v0, 0x0

    :goto_9
    if-ge v0, v3, :cond_1f

    aget-object v4, v2, v0

    invoke-interface {v4}, Lcom/youju/statistics/c/a/c;->b()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4}, Lcom/youju/statistics/c/a/c;->a()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_1f
    iget-object v0, p0, Lcom/youju/statistics/b/a;->g:Lcom/youju/statistics/c/g;

    invoke-virtual {v0, v1}, Lcom/youju/statistics/c/g;->a(Ljava/util/HashMap;)V

    return-void
.end method

.method static synthetic c(Lcom/youju/statistics/b/a;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/youju/statistics/b/a;->a:Z

    return v0
.end method

.method static synthetic d(Lcom/youju/statistics/b/a;)I
    .registers 2

    iget v0, p0, Lcom/youju/statistics/b/a;->c:I

    return v0
.end method

.method private d()V
    .registers 3

    new-instance v0, Lcom/youju/statistics/b/p;

    iget-object v1, p0, Lcom/youju/statistics/b/a;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/youju/statistics/b/p;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/youju/statistics/b/p;->run()V

    return-void
.end method

.method static synthetic e(Lcom/youju/statistics/b/a;)Lcom/youju/statistics/c/g;
    .registers 2

    iget-object v0, p0, Lcom/youju/statistics/b/a;->g:Lcom/youju/statistics/c/g;

    return-object v0
.end method

.method static synthetic f(Lcom/youju/statistics/b/a;)Ljava/util/Map;
    .registers 2

    iget-object v0, p0, Lcom/youju/statistics/b/a;->e:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic g(Lcom/youju/statistics/b/a;)V
    .registers 1

    invoke-direct {p0}, Lcom/youju/statistics/b/a;->c()V

    return-void
.end method

.method static synthetic h(Lcom/youju/statistics/b/a;)V
    .registers 1

    invoke-direct {p0}, Lcom/youju/statistics/b/a;->d()V

    return-void
.end method

.method static synthetic i(Lcom/youju/statistics/b/a;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/youju/statistics/b/a;->d:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected a()V
    .registers 5

    new-instance v0, Lcom/youju/statistics/b/d;

    iget-object v1, p0, Lcom/youju/statistics/b/a;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/youju/statistics/b/a;->h:Lcom/youju/statistics/c/d/b;

    iget-object v3, p0, Lcom/youju/statistics/b/a;->f:[Lcom/youju/statistics/c/a/n;

    invoke-direct {v0, v1, v2, v3}, Lcom/youju/statistics/b/d;-><init>(Landroid/content/Context;Lcom/youju/statistics/c/d/b;[Lcom/youju/statistics/c/a/n;)V

    invoke-virtual {v0}, Lcom/youju/statistics/b/d;->run()V

    return-void
.end method

.method protected b()V
    .registers 3

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/youju/statistics/b/a;->h:Lcom/youju/statistics/c/d/b;

    iput-object v1, p0, Lcom/youju/statistics/b/a;->i:Lcom/youju/statistics/c/d/c;

    iput-object v1, p0, Lcom/youju/statistics/b/a;->b:Landroid/content/Context;

    iget-object v0, p0, Lcom/youju/statistics/b/a;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iput-object v1, p0, Lcom/youju/statistics/b/a;->e:Ljava/util/Map;

    iput-object v1, p0, Lcom/youju/statistics/b/a;->d:Ljava/lang/String;

    return-void
.end method
