.class public Lcom/baidu/apollon/restnet/b/a/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/baidu/apollon/restnet/b/d;


# instance fields
.field private final a:Lcom/baidu/apollon/restnet/b/c;

.field private final b:Lcom/baidu/apollon/restnet/http/a;

.field private c:Ljava/lang/String;

.field private d:Lcom/baidu/apollon/restnet/http/HttpDefines$HttpMethod;

.field private e:Ljava/net/URI;

.field private f:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/baidu/apollon/restnet/b/c;Ljava/net/URI;Lcom/baidu/apollon/restnet/http/HttpDefines$HttpMethod;Ljava/util/List;Ljava/lang/String;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/baidu/apollon/restnet/http/a;

    invoke-direct {v0}, Lcom/baidu/apollon/restnet/http/a;-><init>()V

    iput-object v0, p0, Lcom/baidu/apollon/restnet/b/a/f;->b:Lcom/baidu/apollon/restnet/http/a;

    iput-object p1, p0, Lcom/baidu/apollon/restnet/b/a/f;->a:Lcom/baidu/apollon/restnet/b/c;

    iput-object p5, p0, Lcom/baidu/apollon/restnet/b/a/f;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/baidu/apollon/restnet/b/a/f;->d:Lcom/baidu/apollon/restnet/http/HttpDefines$HttpMethod;

    iput-object p2, p0, Lcom/baidu/apollon/restnet/b/a/f;->e:Ljava/net/URI;

    iput-object p4, p0, Lcom/baidu/apollon/restnet/b/a/f;->f:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()Lcom/baidu/apollon/restnet/http/a;
    .registers 2

    iget-object v0, p0, Lcom/baidu/apollon/restnet/b/a/f;->b:Lcom/baidu/apollon/restnet/http/a;

    return-object v0
.end method

.method public b()Ljava/net/URI;
    .registers 2

    iget-object v0, p0, Lcom/baidu/apollon/restnet/b/a/f;->e:Ljava/net/URI;

    return-object v0
.end method

.method public c()Lcom/baidu/apollon/restnet/b/f;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v1

    if-nez v1, :cond_11

    iget-object v0, p0, Lcom/baidu/apollon/restnet/b/a/f;->a:Lcom/baidu/apollon/restnet/b/c;

    invoke-virtual {v0, p0}, Lcom/baidu/apollon/restnet/b/c;->a(Lcom/baidu/apollon/restnet/b/d;)Lcom/baidu/apollon/restnet/b/f;

    move-result-object v0

    :cond_11
    return-object v0
.end method

.method public d()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/apollon/restnet/b/a/f;->c:Ljava/lang/String;

    return-object v0
.end method

.method public e()V
    .registers 2

    iget-object v0, p0, Lcom/baidu/apollon/restnet/b/a/f;->a:Lcom/baidu/apollon/restnet/b/c;

    invoke-virtual {v0}, Lcom/baidu/apollon/restnet/b/c;->a()V

    return-void
.end method

.method public f()Lcom/baidu/apollon/restnet/http/HttpDefines$HttpMethod;
    .registers 2

    iget-object v0, p0, Lcom/baidu/apollon/restnet/b/a/f;->d:Lcom/baidu/apollon/restnet/http/HttpDefines$HttpMethod;

    return-object v0
.end method

.method public g()Z
    .registers 3

    invoke-virtual {p0}, Lcom/baidu/apollon/restnet/b/a/f;->f()Lcom/baidu/apollon/restnet/http/HttpDefines$HttpMethod;

    move-result-object v0

    sget-object v1, Lcom/baidu/apollon/restnet/http/HttpDefines$HttpMethod;->POST:Lcom/baidu/apollon/restnet/http/HttpDefines$HttpMethod;

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public h()Z
    .registers 3

    invoke-virtual {p0}, Lcom/baidu/apollon/restnet/b/a/f;->f()Lcom/baidu/apollon/restnet/http/HttpDefines$HttpMethod;

    move-result-object v0

    sget-object v1, Lcom/baidu/apollon/restnet/http/HttpDefines$HttpMethod;->GET:Lcom/baidu/apollon/restnet/http/HttpDefines$HttpMethod;

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public i()Ljava/lang/String;
    .registers 6

    iget-object v0, p0, Lcom/baidu/apollon/restnet/b/a/f;->f:Ljava/util/List;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/baidu/apollon/restnet/b/a/f;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_f

    :cond_c
    const-string v0, ""

    :goto_e
    return-object v0

    :cond_f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/baidu/apollon/restnet/b/a/f;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1a
    :goto_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/apollon/restnet/RestNameValuePair;

    invoke-virtual {v0}, Lcom/baidu/apollon/restnet/RestNameValuePair;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/baidu/apollon/restnet/RestNameValuePair;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1a

    if-nez v0, :cond_38

    const-string v0, ""

    :cond_38
    :try_start_38
    iget-object v4, p0, Lcom/baidu/apollon/restnet/b/a/f;->c:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x3d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/baidu/apollon/restnet/b/a/f;->c:Ljava/lang/String;

    invoke-static {v0, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v3, 0x26

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_57
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_38 .. :try_end_57} :catch_58

    goto :goto_1a

    :catch_58
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1a

    :cond_5d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_73

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    const-string v3, ""

    invoke-virtual {v1, v0, v2, v3}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    :cond_73
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_e
.end method
