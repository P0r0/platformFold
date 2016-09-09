.class public Lcom/huanju/data/b/a/c;
.super Lcom/huanju/data/net/AbstractNetTask;


# static fields
.field private static final a:Lcom/huanju/data/a/b;


# instance fields
.field private b:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "HjSendInstalledAppTask"

    invoke-static {v0}, Lcom/huanju/data/a/b;->a(Ljava/lang/String;)Lcom/huanju/data/a/b;

    move-result-object v0

    sput-object v0, Lcom/huanju/data/b/a/c;->a:Lcom/huanju/data/a/b;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    sget-object v0, Lcom/huanju/data/net/AbstractNetTask$ReqType;->Post:Lcom/huanju/data/net/AbstractNetTask$ReqType;

    invoke-direct {p0, p1, v0}, Lcom/huanju/data/net/AbstractNetTask;-><init>(Landroid/content/Context;Lcom/huanju/data/net/AbstractNetTask$ReqType;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huanju/data/b/a/c;->b:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/huanju/data/b/a/c;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a()[B
    .registers 8

    iget-object v0, p0, Lcom/huanju/data/b/a/c;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/huanju/data/a/h;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_47

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huanju/data/b/a/b;

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    iget-object v4, v0, Lcom/huanju/data/b/a/b;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    iget v4, v0, Lcom/huanju/data/b/a/b;->d:I

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    iget-object v4, v0, Lcom/huanju/data/b/a/b;->f:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    iget-boolean v4, v0, Lcom/huanju/data/b/a/b;->e:Z

    if-eqz v4, :cond_41

    const-string v4, "1"

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :goto_38
    iget-object v0, v0, Lcom/huanju/data/b/a/b;->b:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_f

    :cond_41
    const-string v4, "0"

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_38

    :cond_47
    const/4 v1, 0x0

    :try_start_48
    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "utf-8"

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {v3}, Lcom/huanju/data/a/h;->a([B)[B
    :try_end_55
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_48 .. :try_end_55} :catch_c1

    move-result-object v0

    :try_start_56
    sget-object v1, Lcom/huanju/data/b/a/c;->a:Lcom/huanju/data/a/b;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u66f4\u65b0\u8bf7\u6c42\u6570\u636esize(byte):"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v3, v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/huanju/data/a/b;->b(Ljava/lang/String;)V

    sget-object v1, Lcom/huanju/data/b/a/c;->a:Lcom/huanju/data/a/b;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u66f4\u65b0\u8bf7\u6c42\u6570\u636e,\u538b\u7f29\u540esize(byte):"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/huanju/data/a/b;->b(Ljava/lang/String;)V
    :try_end_88
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_56 .. :try_end_88} :catch_e2

    :goto_88
    sget-object v1, Lcom/huanju/data/b/a/c;->a:Lcom/huanju/data/a/b;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u5ba2\u6237\u7aef\u4e0a\u4f20\u6570\u636e:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/huanju/data/a/b;->b(Ljava/lang/String;)V

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u5ba2\u6237\u7aef\u4e0a\u4f20\u6570\u636e:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-object v0

    :catch_c1
    move-exception v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    :goto_c5
    sget-object v3, Lcom/huanju/data/b/a/c;->a:Lcom/huanju/data/a/b;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/huanju/data/a/b;->d(Ljava/lang/String;)V

    goto :goto_88

    :catch_e2
    move-exception v1

    goto :goto_c5
.end method

.method protected getEntity()Lorg/apache/http/HttpEntity;
    .registers 3

    invoke-virtual {p0}, Lcom/huanju/data/b/a/c;->a()[B

    move-result-object v0

    new-instance v1, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v1, v0}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    return-object v1
.end method

.method protected getLaunchMode()Lcom/huanju/data/net/AbstractNetTask$LaunchMode;
    .registers 2

    sget-object v0, Lcom/huanju/data/net/AbstractNetTask$LaunchMode;->updateold:Lcom/huanju/data/net/AbstractNetTask$LaunchMode;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    const-string v0, "HjSendInstalledAppTask"

    return-object v0
.end method

.method protected getURL()Ljava/lang/String;
    .registers 3

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "~~~~~ sendInstallApp ~~~~~"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "get HjSendInstalledAppTask url:http://log.gm825.com/api/sdk/reportapplist?"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v0, "http://log.gm825.com/api/sdk/reportapplist?"

    return-object v0
.end method

.method protected onAddHeaders(Lorg/apache/http/client/methods/HttpUriRequest;)V
    .registers 2

    return-void
.end method
