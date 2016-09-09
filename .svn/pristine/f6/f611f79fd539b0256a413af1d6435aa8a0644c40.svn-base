.class public Lcom/youju/statistics/b/m;
.super Lcom/youju/statistics/b/n;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/youju/statistics/c/c/d;

.field private c:Z

.field private d:Lcom/youju/statistics/c/d/d;

.field private e:I

.field private f:Lcom/youju/statistics/c/d/a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/youju/statistics/b/m;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/youju/statistics/b/m;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/youju/statistics/c/d/d;I)V
    .registers 4

    invoke-direct {p0}, Lcom/youju/statistics/b/n;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/youju/statistics/b/m;->c:Z

    new-instance v0, Lcom/youju/statistics/b/o;

    invoke-direct {v0, p0}, Lcom/youju/statistics/b/o;-><init>(Lcom/youju/statistics/b/m;)V

    iput-object v0, p0, Lcom/youju/statistics/b/m;->f:Lcom/youju/statistics/c/d/a;

    iput-object p1, p0, Lcom/youju/statistics/b/m;->d:Lcom/youju/statistics/c/d/d;

    iput p2, p0, Lcom/youju/statistics/b/m;->e:I

    return-void
.end method

.method static synthetic a(Lcom/youju/statistics/b/m;)Lcom/youju/statistics/c/c/d;
    .registers 2

    iget-object v0, p0, Lcom/youju/statistics/b/m;->b:Lcom/youju/statistics/c/c/d;

    return-object v0
.end method

.method static synthetic a(Lcom/youju/statistics/b/m;Lcom/youju/statistics/c/c/d;)Lcom/youju/statistics/c/c/d;
    .registers 2

    iput-object p1, p0, Lcom/youju/statistics/b/m;->b:Lcom/youju/statistics/c/c/d;

    return-object p1
.end method

.method private a(Ljava/lang/String;)Ljava/io/InputStream;
    .registers 4

    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v0, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/youju/statistics/b/m;->f:Lcom/youju/statistics/c/d/a;

    invoke-static {v0, v1}, Lcom/youju/statistics/a/d;->a(Lorg/apache/http/client/methods/HttpRequestBase;Lcom/youju/statistics/c/d/a;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic a(Lcom/youju/statistics/b/m;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/youju/statistics/b/m;->c:Z

    return p1
.end method

.method static synthetic b(Lcom/youju/statistics/b/m;)V
    .registers 1

    invoke-direct {p0}, Lcom/youju/statistics/b/m;->e()V

    return-void
.end method

.method static synthetic d()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/youju/statistics/b/m;->a:Ljava/lang/String;

    return-object v0
.end method

.method private e()V
    .registers 3

    iget-object v0, p0, Lcom/youju/statistics/b/m;->d:Lcom/youju/statistics/c/d/d;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-boolean v0, p0, Lcom/youju/statistics/b/m;->c:Z

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/youju/statistics/b/m;->d:Lcom/youju/statistics/c/d/d;

    iget-object v1, p0, Lcom/youju/statistics/b/m;->b:Lcom/youju/statistics/c/c/d;

    invoke-virtual {v0, v1}, Lcom/youju/statistics/c/d/d;->a(Lcom/youju/statistics/c/c/d;)V

    goto :goto_4

    :cond_11
    iget-object v0, p0, Lcom/youju/statistics/b/m;->d:Lcom/youju/statistics/c/d/d;

    invoke-virtual {v0}, Lcom/youju/statistics/c/d/d;->a()V

    goto :goto_4
.end method

.method private f()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-direct {p0}, Lcom/youju/statistics/b/m;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "?v="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/youju/statistics/b/m;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "&vno=5"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "&appkey="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/youju/statistics/YouJuAgent;->getAppID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "&imei="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/youju/statistics/a/n;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private g()Ljava/lang/String;
    .registers 2

    invoke-static {}, Lcom/youju/statistics/a/n;->g()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "http://test1.gionee.com/stats/sysncfg"

    :goto_8
    return-object v0

    :cond_9
    const-string v0, "http://stats.gionee.com/stats/sysncfg"

    goto :goto_8
.end method


# virtual methods
.method protected a()V
    .registers 1

    invoke-virtual {p0}, Lcom/youju/statistics/b/m;->c()V

    return-void
.end method

.method protected b()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/youju/statistics/b/m;->d:Lcom/youju/statistics/c/d/d;

    iput-object v0, p0, Lcom/youju/statistics/b/m;->b:Lcom/youju/statistics/c/c/d;

    iput-object v0, p0, Lcom/youju/statistics/b/m;->f:Lcom/youju/statistics/c/d/a;

    return-void
.end method

.method public c()V
    .registers 2

    invoke-direct {p0}, Lcom/youju/statistics/b/m;->f()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/youju/statistics/b/m;->a(Ljava/lang/String;)Ljava/io/InputStream;

    return-void
.end method
