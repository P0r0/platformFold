.class Lcom/huanju/data/content/raw/video/g;
.super Lcom/huanju/data/net/AbstractNetTask;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:I

.field private f:I

.field private g:I


# direct methods
.method public constructor <init>(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V
    .registers 10

    sget-object v0, Lcom/huanju/data/net/AbstractNetTask$ReqType;->Get:Lcom/huanju/data/net/AbstractNetTask$ReqType;

    invoke-direct {p0, p2, v0}, Lcom/huanju/data/net/AbstractNetTask;-><init>(Landroid/content/Context;Lcom/huanju/data/net/AbstractNetTask$ReqType;)V

    const-string v0, ""

    iput-object v0, p0, Lcom/huanju/data/content/raw/video/g;->a:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/huanju/data/content/raw/video/g;->b:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/huanju/data/content/raw/video/g;->c:Ljava/lang/String;

    const/16 v0, 0xa

    iput v0, p0, Lcom/huanju/data/content/raw/video/g;->d:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/huanju/data/content/raw/video/g;->e:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/huanju/data/content/raw/video/g;->f:I

    invoke-static {p3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huanju/data/content/raw/video/g;->a:Ljava/lang/String;

    invoke-static {p4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huanju/data/content/raw/video/g;->b:Ljava/lang/String;

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_33

    invoke-static {p5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huanju/data/content/raw/video/g;->c:Ljava/lang/String;

    :cond_33
    iput p6, p0, Lcom/huanju/data/content/raw/video/g;->d:I

    iput p7, p0, Lcom/huanju/data/content/raw/video/g;->e:I

    iput p1, p0, Lcom/huanju/data/content/raw/video/g;->g:I

    iput p8, p0, Lcom/huanju/data/content/raw/video/g;->f:I

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

    const-string v0, "HjRequestVideoListTask"

    return-object v0
.end method

.method protected getURL()Ljava/lang/String;
    .registers 9

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/huanju/data/content/raw/video/g;->c:Ljava/lang/String;

    if-eqz v0, :cond_4b

    iget-object v0, p0, Lcom/huanju/data/content/raw/video/g;->c:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4b

    sget-object v0, Lcom/huanju/data/a/f;->j:Ljava/lang/String;

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/huanju/data/content/raw/video/g;->g:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/huanju/data/content/raw/video/g;->a:Ljava/lang/String;

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/huanju/data/content/raw/video/g;->b:Ljava/lang/String;

    aput-object v2, v1, v5

    iget-object v2, p0, Lcom/huanju/data/content/raw/video/g;->c:Ljava/lang/String;

    aput-object v2, v1, v6

    iget v2, p0, Lcom/huanju/data/content/raw/video/g;->e:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v7

    const/4 v2, 0x5

    iget v3, p0, Lcom/huanju/data/content/raw/video/g;->d:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    iget v3, p0, Lcom/huanju/data/content/raw/video/g;->f:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_4a
    return-object v0

    :cond_4b
    sget-object v0, Lcom/huanju/data/a/f;->k:Ljava/lang/String;

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/huanju/data/content/raw/video/g;->g:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/huanju/data/content/raw/video/g;->a:Ljava/lang/String;

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/huanju/data/content/raw/video/g;->b:Ljava/lang/String;

    aput-object v2, v1, v5

    iget v2, p0, Lcom/huanju/data/content/raw/video/g;->e:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    iget v2, p0, Lcom/huanju/data/content/raw/video/g;->d:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v7

    const/4 v2, 0x5

    iget v3, p0, Lcom/huanju/data/content/raw/video/g;->f:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4a
.end method

.method protected onAddHeaders(Lorg/apache/http/client/methods/HttpUriRequest;)V
    .registers 2

    return-void
.end method
