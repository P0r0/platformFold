.class Lcom/huanju/data/content/raw/info/aa;
.super Lcom/huanju/data/net/AbstractNetTask;


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:I

.field private d:Ljava/lang/String;

.field private e:I

.field private f:Ljava/lang/String;

.field private g:I

.field private h:I


# direct methods
.method public constructor <init>(ILandroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V
    .registers 12

    const/4 v1, 0x0

    sget-object v0, Lcom/huanju/data/net/AbstractNetTask$ReqType;->Get:Lcom/huanju/data/net/AbstractNetTask$ReqType;

    invoke-direct {p0, p2, v0}, Lcom/huanju/data/net/AbstractNetTask;-><init>(Landroid/content/Context;Lcom/huanju/data/net/AbstractNetTask$ReqType;)V

    const-string v0, ""

    iput-object v0, p0, Lcom/huanju/data/content/raw/info/aa;->a:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Lcom/huanju/data/content/raw/info/aa;->b:I

    const/16 v0, 0xa

    iput v0, p0, Lcom/huanju/data/content/raw/info/aa;->c:I

    const-string v0, ""

    iput-object v0, p0, Lcom/huanju/data/content/raw/info/aa;->d:Ljava/lang/String;

    iput v1, p0, Lcom/huanju/data/content/raw/info/aa;->e:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huanju/data/content/raw/info/aa;->f:Ljava/lang/String;

    iput v1, p0, Lcom/huanju/data/content/raw/info/aa;->g:I

    iput v1, p0, Lcom/huanju/data/content/raw/info/aa;->h:I

    iput p3, p0, Lcom/huanju/data/content/raw/info/aa;->g:I

    invoke-static {p4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huanju/data/content/raw/info/aa;->a:Ljava/lang/String;

    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_32

    invoke-static {p6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huanju/data/content/raw/info/aa;->f:Ljava/lang/String;

    :cond_32
    invoke-static {p5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huanju/data/content/raw/info/aa;->d:Ljava/lang/String;

    iput p7, p0, Lcom/huanju/data/content/raw/info/aa;->c:I

    iput p8, p0, Lcom/huanju/data/content/raw/info/aa;->b:I

    iput p1, p0, Lcom/huanju/data/content/raw/info/aa;->e:I

    iput p9, p0, Lcom/huanju/data/content/raw/info/aa;->h:I

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

    const-string v0, "HjRequestInfoListTask"

    return-object v0
.end method

.method protected getURL()Ljava/lang/String;
    .registers 9

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/huanju/data/content/raw/info/aa;->f:Ljava/lang/String;

    if-nez v0, :cond_45

    sget-object v0, Lcom/huanju/data/a/f;->e:Ljava/lang/String;

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/huanju/data/content/raw/info/aa;->g:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    iget v2, p0, Lcom/huanju/data/content/raw/info/aa;->e:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/huanju/data/content/raw/info/aa;->a:Ljava/lang/String;

    aput-object v2, v1, v5

    iget-object v2, p0, Lcom/huanju/data/content/raw/info/aa;->d:Ljava/lang/String;

    aput-object v2, v1, v6

    iget v2, p0, Lcom/huanju/data/content/raw/info/aa;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v7

    const/4 v2, 0x5

    iget v3, p0, Lcom/huanju/data/content/raw/info/aa;->c:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    iget v3, p0, Lcom/huanju/data/content/raw/info/aa;->h:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_44
    return-object v0

    :cond_45
    sget-object v0, Lcom/huanju/data/a/f;->f:Ljava/lang/String;

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/huanju/data/content/raw/info/aa;->g:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    iget v2, p0, Lcom/huanju/data/content/raw/info/aa;->e:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/huanju/data/content/raw/info/aa;->a:Ljava/lang/String;

    aput-object v2, v1, v5

    iget-object v2, p0, Lcom/huanju/data/content/raw/info/aa;->f:Ljava/lang/String;

    aput-object v2, v1, v6

    iget-object v2, p0, Lcom/huanju/data/content/raw/info/aa;->d:Ljava/lang/String;

    aput-object v2, v1, v7

    const/4 v2, 0x5

    iget v3, p0, Lcom/huanju/data/content/raw/info/aa;->b:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    iget v3, p0, Lcom/huanju/data/content/raw/info/aa;->c:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x7

    iget v3, p0, Lcom/huanju/data/content/raw/info/aa;->h:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_44
.end method

.method protected onAddHeaders(Lorg/apache/http/client/methods/HttpUriRequest;)V
    .registers 2

    return-void
.end method
