.class public Lcom/baidu/apollon/restnet/b/h;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Ljava/lang/Class;

.field private final c:Lcom/baidu/apollon/restnet/a/a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/baidu/apollon/restnet/b/h;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/apollon/restnet/b/h;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Lcom/baidu/apollon/restnet/a/a;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_d

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'responseType\' must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    if-nez p2, :cond_17

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'messageConverters\' must not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    iput-object p1, p0, Lcom/baidu/apollon/restnet/b/h;->b:Ljava/lang/Class;

    iput-object p2, p0, Lcom/baidu/apollon/restnet/b/h;->c:Lcom/baidu/apollon/restnet/a/a;

    return-void
.end method

.method private b(Lcom/baidu/apollon/restnet/b/f;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p1}, Lcom/baidu/apollon/restnet/b/f;->d()Lcom/baidu/apollon/restnet/http/HttpStatus;

    move-result-object v1

    sget-object v2, Lcom/baidu/apollon/restnet/http/HttpStatus;->NO_CONTENT:Lcom/baidu/apollon/restnet/http/HttpStatus;

    if-eq v1, v2, :cond_d

    sget-object v2, Lcom/baidu/apollon/restnet/http/HttpStatus;->NOT_MODIFIED:Lcom/baidu/apollon/restnet/http/HttpStatus;

    if-ne v1, v2, :cond_e

    :cond_d
    :goto_d
    return v0

    :cond_e
    invoke-interface {p1}, Lcom/baidu/apollon/restnet/b/f;->c()Lcom/baidu/apollon/restnet/http/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/apollon/restnet/http/a;->b()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_d

    const/4 v0, 0x1

    goto :goto_d
.end method


# virtual methods
.method public a(Lcom/baidu/apollon/restnet/b/f;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/baidu/apollon/restnet/b/h;->b(Lcom/baidu/apollon/restnet/b/f;)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return-object v0

    :cond_8
    invoke-interface {p1}, Lcom/baidu/apollon/restnet/b/f;->c()Lcom/baidu/apollon/restnet/http/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/apollon/restnet/http/a;->c()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_22

    sget-object v0, Lcom/baidu/apollon/restnet/b/h;->a:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_22

    sget-object v0, Lcom/baidu/apollon/restnet/b/h;->a:Ljava/lang/String;

    const-string v1, "No Content-Type header found, defaulting to application/octet-stream"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_22
    iget-object v0, p0, Lcom/baidu/apollon/restnet/b/h;->c:Lcom/baidu/apollon/restnet/a/a;

    iget-object v1, p0, Lcom/baidu/apollon/restnet/b/h;->b:Ljava/lang/Class;

    invoke-virtual {v0, v1, p1}, Lcom/baidu/apollon/restnet/a/a;->a(Ljava/lang/Class;Lcom/baidu/apollon/restnet/b/f;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_7
.end method
