.class public Lcom/huanju/data/content/raw/info/k;
.super Lcom/huanju/data/net/AbstractNetTask;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Lcom/huanju/data/content/raw/HjVoteType;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/huanju/data/content/raw/HjVoteType;)V
    .registers 5

    sget-object v0, Lcom/huanju/data/net/AbstractNetTask$ReqType;->Get:Lcom/huanju/data/net/AbstractNetTask$ReqType;

    invoke-direct {p0, p1, v0}, Lcom/huanju/data/net/AbstractNetTask;-><init>(Landroid/content/Context;Lcom/huanju/data/net/AbstractNetTask$ReqType;)V

    const-string v0, "article"

    iput-object v0, p0, Lcom/huanju/data/content/raw/info/k;->a:Ljava/lang/String;

    const-string v0, "gallery"

    iput-object v0, p0, Lcom/huanju/data/content/raw/info/k;->b:Ljava/lang/String;

    const-string v0, "video"

    iput-object v0, p0, Lcom/huanju/data/content/raw/info/k;->c:Ljava/lang/String;

    invoke-static {p2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huanju/data/content/raw/info/k;->d:Ljava/lang/String;

    iput-object p3, p0, Lcom/huanju/data/content/raw/info/k;->e:Lcom/huanju/data/content/raw/HjVoteType;

    return-void
.end method


# virtual methods
.method protected getEntity()Lorg/apache/http/HttpEntity;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getLaunchMode()Lcom/huanju/data/net/AbstractNetTask$LaunchMode;
    .registers 2

    sget-object v0, Lcom/huanju/data/net/AbstractNetTask$LaunchMode;->addnew:Lcom/huanju/data/net/AbstractNetTask$LaunchMode;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    const-string v0, "HjRequestVoteTask"

    return-object v0
.end method

.method protected getURL()Ljava/lang/String;
    .registers 6

    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/huanju/data/content/raw/info/k;->e:Lcom/huanju/data/content/raw/HjVoteType;

    sget-object v1, Lcom/huanju/data/content/raw/HjVoteType;->article:Lcom/huanju/data/content/raw/HjVoteType;

    if-ne v0, v1, :cond_1a

    sget-object v0, Lcom/huanju/data/a/f;->u:Ljava/lang/String;

    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "article"

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/huanju/data/content/raw/info/k;->d:Ljava/lang/String;

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_19
    return-object v0

    :cond_1a
    iget-object v0, p0, Lcom/huanju/data/content/raw/info/k;->e:Lcom/huanju/data/content/raw/HjVoteType;

    sget-object v1, Lcom/huanju/data/content/raw/HjVoteType;->gallery:Lcom/huanju/data/content/raw/HjVoteType;

    if-ne v0, v1, :cond_31

    sget-object v0, Lcom/huanju/data/a/f;->u:Ljava/lang/String;

    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "gallery"

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/huanju/data/content/raw/info/k;->d:Ljava/lang/String;

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_19

    :cond_31
    iget-object v0, p0, Lcom/huanju/data/content/raw/info/k;->e:Lcom/huanju/data/content/raw/HjVoteType;

    sget-object v1, Lcom/huanju/data/content/raw/HjVoteType;->video:Lcom/huanju/data/content/raw/HjVoteType;

    if-ne v0, v1, :cond_48

    sget-object v0, Lcom/huanju/data/a/f;->u:Ljava/lang/String;

    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "video"

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/huanju/data/content/raw/info/k;->d:Ljava/lang/String;

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_19

    :cond_48
    const-string v0, ""

    goto :goto_19
.end method

.method protected onAddHeaders(Lorg/apache/http/client/methods/HttpUriRequest;)V
    .registers 2

    return-void
.end method
