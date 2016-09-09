.class public Lcom/huanju/data/b/b/c;
.super Lcom/huanju/data/net/AbstractNetTask;


# static fields
.field private static final a:Lcom/huanju/data/a/b;


# instance fields
.field private b:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "HjSendStartTimeTask"

    invoke-static {v0}, Lcom/huanju/data/a/b;->a(Ljava/lang/String;)Lcom/huanju/data/a/b;

    move-result-object v0

    sput-object v0, Lcom/huanju/data/b/b/c;->a:Lcom/huanju/data/a/b;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    sget-object v0, Lcom/huanju/data/net/AbstractNetTask$ReqType;->Post:Lcom/huanju/data/net/AbstractNetTask$ReqType;

    invoke-direct {p0, p1, v0}, Lcom/huanju/data/net/AbstractNetTask;-><init>(Landroid/content/Context;Lcom/huanju/data/net/AbstractNetTask$ReqType;)V

    iput-object p1, p0, Lcom/huanju/data/b/b/c;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected getEntity()Lorg/apache/http/HttpEntity;
    .registers 4

    new-instance v0, Lcom/huanju/data/b/f/a;

    iget-object v1, p0, Lcom/huanju/data/b/b/c;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/huanju/data/b/f/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/huanju/data/b/f/a;->b()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "fail_cnt="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

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

    const-string v0, "HjSendStartTimeTask"

    return-object v0
.end method

.method protected getURL()Ljava/lang/String;
    .registers 2

    const-string v0, "http://data.gm825.com/api/sdk/reportactive?"

    return-object v0
.end method

.method protected onAddHeaders(Lorg/apache/http/client/methods/HttpUriRequest;)V
    .registers 4

    const-string v0, "Content-type"

    const-string v1, "application/x-www-form-urlencoded"

    invoke-interface {p1, v0, v1}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
